import time
from selenium import webdriver

"""
    Função que inicializa o webdriver do chrome
    Edite o prefs com o caminho do diretorio para download
    Também indique o caminho do driver do chrome em executable_path
"""
def ini_webdriver():
    chromeOptions = webdriver.ChromeOptions()
    prefs = {"download.default_directory": "C:\\Users\\Syane\\Documents\\github\\Teste-Fluig"}
    chromeOptions.add_experimental_option("prefs", prefs)
    driver = webdriver.Chrome(executable_path=r'C:\\Users\\Syane\\Documents\\github\\Teste-Fluig\\chromedriver.exe', chrome_options=chromeOptions)
    return driver

"""
    Recebe a URL para estar carregando no webdriver
"""
def set_url_login(driver):
    driver.get('https://foo:bar@vaga-bi-fluig.herokuapp.com/automation')

"""
    retorna uma lista de elementos, pela tag html a, onde se encontra o link para download
"""
def find_Element_Tag(driver):
    tags = driver.find_elements_by_tag_name('a')
    return tags

"""
    Para cada elemento retornado pela tag <a></a> ele clica para fazer o download do arquivo
"""
def download_file(tags):
    for tag in tags:
        tag.click()

def main():
    #Inicializa o driver
    driver = ini_webdriver()
    #Faz o carregamento da pagina para o endereço correto
    set_url_login(driver)
    #Encontra os arquivos para download pela tag <a></a>
    tags = find_Element_Tag(driver)
    #faz os downloads
    download_file(tags)
    time.sleep(5)
    #Encerra o webdriver
    driver.quit()

if __name__ == '__main__':
    main()