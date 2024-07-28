#!/bin/bash
while IFS= read -r url
do
  ./xpoc -t "$url" -o "scan_${url//[^a-zA-Z0-9]/_}.html"
done < or.id.txt
