import urllib
import requests
from bs4 import BeautifulSoup

# desktop user-agent
USER_AGENT = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:65.0) Gecko/20100101 Firefox/65.0"
# mobile user-agent
MOBILE_USER_AGENT = "Mozilla/5.0 (Linux; Android 7.0; SM-G930V Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.125 Mobile Safari/537.36"

def search(query):

    query = query.replace(' ', '+')
    URL = f"https://google.com/search?q={query}"

    headers = {"user-agent": USER_AGENT}
    resp = requests.get(URL, headers=headers)

    urls = []
    if resp.status_code == 200:
        # soup = BeautifulSoup(resp.content, "html.parser")
        soup = BeautifulSoup(resp.text, 'lxml')
        results = []
        for g in soup.find_all('h3'):
            # print(g)
            # print(g.parent.parent.a['href'])
            urls.append(g.parent.parent.a['href'])
            # print(urls)
        #     p = g.parent.parent
        #     if p.a and 'href' in p.a:
        #         print(p.a['href'])
        #     anchors = g.find_all('a')

        #     if anchors:
        #         link = anchors[0]['href']
        #         title = g.find('h3').text
        #         item = {
        #             "title": title,
        #             "link": link
        #         }
        #         results.append(item)
        # print(results)
        print(urls)

    with open("tcu_informes.txt", "a") as ofile:
        ofile.write("\n".join(urls))
        ofile.write("\n")


if __name__ == "__main__":
    query = "site:https://www.tcu.es/repositorio/+filetype:pdf"
    search(query)
