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



