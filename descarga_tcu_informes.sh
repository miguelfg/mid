#!/bin/bash

# mkdir -p "data/tcu"

# for i in {1000..1005}; do
#     filenpath="data/tcu/I$i.pdf"
#     if [ ! -f "$filenpath" ]; then
#         curl "https://www.tcu.es/repositorio/b4a6827c-5afd-476c-b3b0-7e61f6773ea9/I$i.pdf" -o "$filenpath"
#         sleep 0.2
#     fi
# done

# for u in `cat tcu_informes.txt` ; do (cd target/path && curl -L -O $u ) ; done

# for i in {5..67} ; do curl 'https://www.tcu.es/searcher/document/DocumentSearch.action'   -H 'Connection: keep-alive'   -H 'Cache-Control: max-age=0'   -H 'Upgrade-Insecure-Requests: 1'   -H 'Origin: https://www.tcu.es'   -H 'Content-Type: application/x-www-form-urlencoded'   -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36'   -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9'   -H 'Sec-Fetch-Site: same-origin'   -H 'Sec-Fetch-Mode: navigate'   -H 'Sec-Fetch-User: ?1'   -H 'Sec-Fetch-Dest: iframe'   -H 'Referer: https://www.tcu.es/searcher/document/DocumentSearch.action'   -H 'Accept-Language: es-ES,es;q=0.9,en-US;q=0.8,en;q=0.7,de;q=0.6'   -H 'Cookie: JSESSIONID=211B52CE2EB82C31CAD4590890F052DC; _ga=GA1.2.1958905628.1606080441; cookiescriptaccept=visit; _gid=GA1.2.1448260683.1607281097'   --data-raw "submitSearch=IGG&docFreeText=&docCheckPresident=true&__checkbox_docCheckPresident=true&docCheckFis=true&__checkbox_docCheckFis=true&__checkbox_docCheckEnjudge=true&__checkbox_docCheckSecretary=true&docType=INFORME&docType=MEMORIA&docType=MOCI%C3%93N&docType=NOTA&docType=RESOLUCI%C3%93N+DE+LA+COMISI%C3%93N+MIXTA&docType=DECLARACI%C3%93N+CUENTA+GENERAL+DEL+ESTADO&__multiselect_docType=&docDateFrom=&docDateTo=&numero=&fisLogic%5B%5D=AND&fisOption%5B%5D=TITULO&fisText%5B%5D=&__checkbox_fisExact1=true&fisDatePlenoFrom=&fisDatePlenoTo=&__multiselect_docCheckFisSelect=&fisDatePCMFrom=&fisDatePCMTo=&__multiselect_comunidadAutonoma=&fisDateRCMFrom=&fisDateRCMTo=&__multiselect_tipoEntidad=&boeDateFrom=&boeDateTo=&__multiselect_temaFis=&enjLogic%5B%5D=AND&enjOption%5B%5D=TODO&enjText%5B%5D=&__checkbox_enjExact1=true&__multiselect_enjudgePonentes=&__multiselect_docCheckEnjudgeSelect=&enjudgeDateFrom=&enjudgeDateTo=&tabType=04&orderBy=1D&numPage=$i"   --compressed > "data/tcu/web_search/$i.html" && sleep 0.2 ; done
# grep pdf data/tcu/web_search/ -r --include=*html -h | cut -f 2 -d '"' | grep -v BOE > data/tcu/pdf_urls.txt

# for u in `cat data/tcu/pdf_urls.txt` ; do echo $u ; done
# for u in `cat data/tcu/pdf_urls.txt` ; do (cd target/path && curl -L -O $u ) ; done


while read i; do 
    # echo "$i" && (cd data/tcu/informes/ && curl -L -O "$i" );
    filename=$(echo "$i" | cut -f 6 -d "/")
    url=${i// /\%20}
    echo $filename
    echo $url
    if [ ! -f "data/tcu/informes/$filename" ]; then
        echo "$i" && (cd data/tcu/informes/ && curl -L -O "$url" );
    fi
    sleep 0.3
done < ./data/tcu/pdf_urls.with_spaces.txt
# done < ./data/tcu/pdf_urls.txt
