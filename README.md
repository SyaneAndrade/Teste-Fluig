# Teste-Fluig 
<h2>Script simples para fazer autenticação e downloads</h2>
<p>O script utiliza:</p>
<ul>
  <li>Python</li>
  <li>Framework Selenium</li>
  <li>ChromeDriver</li>
</ul>
<p>Para instalar o selenium basta o usar o pip: pip install selenium.</p>
<p>Você poderá fazer o download do ChromeDriver aqui: https://sites.google.com/a/chromium.org/chromedriver/getting-started. E também encontrará um pequeno exemplo de como utilizar.</p>
<p>Edite o prefs com o caminho do diretorio para download e também indique o caminho do driver do chrome em executable_path na função ini_webdriver que se encontra em script-download.py.</p>
<p>Você poderá inserir a url para carregamento no drive na funçao set_url_login, no meu caso eu precisei fazer uma autenticação para acessar os downloads então utilizei a url nesse formato: https://username:password@yoursite.com</p>
 
<p>O script procura por uma lista de elementos pela tag 'a' do html para fazer download, caso tenha necessidade poderá olhar em:
http://selenium-python.readthedocs.io/locating-elements.html para verificar outros tipos de elementos que podem ser usados para o mesmo fim.</p>

<h2>Script simples para consumir uma API e transformar o JSON em Excel</h2>

<p>O script utiliza:</p>
<ul>
  <li>Python</li>
  <li>Biblioteca requests</li>
  <li>ChromeDriver</li>
</ul>
<p>Para instalar o pandas basta utilizar: pip install pandas.</p>
<p>Para criar o excel, no meu caso não estava instalado, você também precisará instalar a biblioteca openpyxl: pip install openpyxl.</p>
<p>Se for um json simples que a url retorna você precisa só modificar a url na função get do arquivo script-api.py</p>
<p>Para mais informações sobre a biblioteca request e como utiliza-la você pode encontrar aqui: https://pythonhelp.wordpress.com/2014/07/25/acessando-apis-rest-com-python/</p>
<p>Quanto ao pandas é considerado uma biblioteca muito forte para analise de dados do python, mais informações sobre eu utilizei esse link aqui: https://www.datacamp.com/community/tutorials/pandas-tutorial-dataframe-python</p>

<h2>Analise de dados apartir do arquivo Dados RH</h2>

<p>Foi desenvolvido utilizando a ferramenta R studio, essa interface te permite importar dados, seja de extensões como txt até xlsx. Mais informações sobre funçoes e ferramentas do R poderá acessar : https://cran.r-project.org/doc/contrib/Landeiro-Introducao.pdf</p>
<p>Tentei tirar o maximo de relações e informações das variaveis e valores que se encontra no arquivo de dados. Você poderá visualizar os graficos que se encontra em: https://github.com/SyaneAndrade/Teste-Fluig/tree/master/Graficos</p>
