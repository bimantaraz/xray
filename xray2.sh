#!/bin/bash
while IFS= read -r url
do
  ./xray ws --basic-crawler "$url" --plugins sqldet,cmd-injection --html-output "scan_${url//[^a-zA-Z0-9]/_}.html"
done < or.id.txt
