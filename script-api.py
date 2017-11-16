import json
import requests
import pandas as pd

#Faz a requisição get
def get():
    return requests.get('https://vaga-bi-fluig.herokuapp.com/api/automation/initial-test/')

#Convert o json retornado no content da requisição em um arquivo excel
def convert_Json_xlsx(response):
    pd.read_json(response.content).to_excel("json_test.xlsx")

def main():
    response = get()
    #Verifica o status da requisição feita
    print(response.status_code)
    convert_Json_xlsx(response)

if __name__ == '__main__':
    main()