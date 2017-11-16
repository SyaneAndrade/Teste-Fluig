import requests
import pandas as pd

#Faz a requisição get, caseo necessite poderá mudar a url do get
def get():
    return requests.get('https://vaga-bi-fluig.herokuapp.com/api/automation/initial-test/')

#Convert o json retornado no content da requisição em um arquivo excel
def convert_Json_xlsx(response):
    pd.read_json(response.content).to_excel("json_excel.xlsx")

def main():
    response = get()
    #Verifica o status da requisição feita
    print(response.status_code)
    convert_Json_xlsx(response)

if __name__ == '__main__':
    main()