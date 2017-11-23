import requests
import pandas as pd

#Faz a requisição get, caseo necessite poderá mudar a url do get
def get(url):
    return requests.get(url)

#Convert o json retornado no content da requisição em um arquivo excel
def convert_Json_xlsx(response):
    pd.read_json(response.content).to_excel("json_excel.xlsx")

def separete_date(json):
    
def main():   
    url = 'https://vaga-bi-fluig.herokuapp.com/api/automation/complex-test/0'
    while(url != None):
        response = get(url)
        #Verifica o status da requisição feita
        print(response.status_code)
        convert_Json_xlsx(response)

if __name__ == '__main__':
    main()