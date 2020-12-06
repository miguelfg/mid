import os
from os import read
import urllib
import requests
from bs4 import BeautifulSoup
from slugify import slugify

# desktop user-agent
USER_AGENT = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:65.0) Gecko/20100101 Firefox/65.0"
BASENAME = "https://google.com"

def search(url=None, query=None, page=1):

    print(f"Searching for page: {page} in URL {url}")
    
    headers = {"user-agent": USER_AGENT}

    ohtml_path = "data/tcu/searches/{}.{}.html".format(
        slugify(query), page)

    if os.path.exists(ohtml_path):
        print("Reading saved search")
        with open(ohtml_path, 'r') as ihtml:
            html = ihtml.read()
            status_code = 200

    else:
        print("Running new search")
        resp = requests.get(url, headers=headers)
        html = resp.text
        status_code = resp.status_code
        with open(ohtml_path, 'w') as ohtml:
            ohtml.write(html)

    if status_code == 200:
        # soup = BeautifulSoup(resp.content, "html.parser")
        soup = BeautifulSoup(html, 'lxml')

        return soup
    
    return None

def get_pdf_urls(soup):

    urls = []
    for g in soup.find_all('h3'):
        urls.append(g.parent.parent.a['href'])

    with open("tcu_informes.txt", "a") as ofile:
        ofile.write("\n".join(urls))
        ofile.write("\n")

    return urls

def get_result_pages(soup):
    pages = [p['href'] for p in soup.find_all('a', class_='fl')]
    pages = [BASENAME + p for p in pages]
    return pages


if __name__ == "__main__":
    query = "site:https://www.tcu.es/repositorio/+filetype:pdf"
    query = query.replace(' ', '+')
    url = f"{BASENAME}/search?q={query}"
    soup = search(url=url, query=query)
    pdfs = get_pdf_urls(soup)
    pages = get_result_pages(soup)

    for i, p in enumerate(pages, start=2):
        soup = search(url=p, query=query, page=i)
        pdfs = get_pdf_urls(soup)
        ps = get_result_pages(soup)
        print("\n".join(ps))
        for new_p in ps:
            if new_p not in pages:
                "Appended new page result that we didn't have before"
                pages.append(new_p)
                
