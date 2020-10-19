#!/usr/bin/python3

import sys
import json

if len(sys.argv) != 2:
  sys.exit("Missing arg.\nUsage: postes-json2csv.py json_fil.json")


print('Section,Section_label,Année,Postes')

with open(sys.argv[1]) as json_file:
  postes = json.load(json_file)
  for p in postes:
    section = p['key'].replace("Section ","")
    section_label = p['name']
    for v in p['values']:
      print(f'{section},"{section_label}",{v[0]},{v[1]}')
