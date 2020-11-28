#!/bin/bash

# mkdir -p "data/tcu"

# for i in {1000..1005}; do
#     filenpath="data/tcu/I$i.pdf"
#     if [ ! -f "$filenpath" ]; then
#         curl "https://www.tcu.es/repositorio/b4a6827c-5afd-476c-b3b0-7e61f6773ea9/I$i.pdf" -o "$filenpath"
#         sleep 0.2
#     fi
# done

for u in `cat tcu_informes.txt` ; do (cd target/path && curl -L -O $u ) ; done