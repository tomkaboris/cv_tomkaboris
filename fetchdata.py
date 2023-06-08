import json
import requests
from bs4 import BeautifulSoup


url = 'https://docs.google.com/spreadsheets/d/1_VQoY4GYbuI2Cu9Pl8ahxTmYoTE3Rvke6CuBDXyHG04/edit#gid=0'
response = requests.get(url)
html_content = response.text

soup = BeautifulSoup(html_content, 'html.parser')

# Find the table element containing the data
table = soup.find('table')

items = ['DevOps','Linux','PHP','K8s','Docker','AWS','Java','Python']
values = []

for i in range(8):

    row_index = 2
    column_index = i

    # Find the row in the table
    row = table.find_all('tr')[row_index]

    # Find the specific cell in the row
    cell = row.find_all('td')[column_index]

    # Extract the content of the cell
    cell_content = cell.text
    values.append(cell_content)

# jobs = dict(zip(values, items))
jobs = [{ 'position': items, 'demand': values } for items, values in zip(items, values)]

# Serializing json
json_object = json.dumps(jobs, indent=8)

# Writing to sample.json
with open("/usr/share/nginx/html/jobs.json", "w") as outfile:
    outfile.write(json_object)
