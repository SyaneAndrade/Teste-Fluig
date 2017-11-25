import requests
import pandas as pd
import json
import pdb
from requests.auth import HTTPBasicAuth
import pdb


#Faz a requisição get, caseo necessite poderá mudar a url do get e retorna um dict
def get(url):
    return requests.get(url).json()

#Convert o json retornado no content da requisição em um arquivo excel
def convert_Json_csv(response):
    pd.read_json(response).to_csv("json_dados_rh.csv", index=False)

def muda_value_param(response):
    for obj_dict in response["results"]:

            if obj_dict["left"] == 1:
                obj_dict["left"] = 'sim'
            else:
                obj_dict["left"] = 'nao'

            if obj_dict["promotion_last_5years"] == 0:
                obj_dict["promotion_last_5years"] = 'nao'
            else:
                obj_dict["promotion_last_5years"] = 'sim'

            if obj_dict["work_accident"] == 1:
                obj_dict["work_accident"] = 'sim'
            else:
                obj_dict["work_accident"] = 'nao'
   
def main():   
    url = 'https://vaga-bi-fluig.herokuapp.com/api/automation/complex-test/0'
    json_mount = []
    while(url != None):
        print(url)
        response = get(url)
        #muda valores de left, promotion e work de 1 e 0 para Sim e Nao
        muda_value_param(response)
        #monta uma lista de dict que depois sera transformado em um json
        json_mount = json_mount + response["results"]
        #Verifica a proxima url valida
        url = response["next_page"]
        #Mostra a proxima url a ser acessada
    #cria um json para o csv
    convert_Json_csv(json.dumps(json_mount))
    #Envia o csv para o servidor
    with open('json_dados_rh.csv', 'rb') as CSV:
        response = requests.put('https://secure-di.gooddata.com/project-uploads/nhyxxiw44gnthzmpu8jj92t6o2q5g491/DadosRH.csv', data=CSV, headers = { 'content-type': 'multipart/form-data'}, auth=HTTPBasicAuth('EMAIL', 'senha'))
        print(response.status_code)

if __name__ == '__main__':
    main()