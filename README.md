# Teste-Fluig - script para download
<p>Script simples para fazer autenticação e downloads.</p>
<p>O script utiliza:</p>
<ul>
  <li>python3</li>
  <li>Framework Selenium</li>
  <li>ChromeDriver</li>
</ul>
<p>Edite o prefs com o caminho do diretorio para download e também indique o caminho do driver do chrome em executable_path na função ini_webdriver que se encontra em script-download.py.</p>
<p>Você poderá inserir a url para carregamento no drive na funçao set_url_login, no meu caso eu precisei fazer uma autenticação para acessar os downloads então utilizei a url nesse formato: https://username:password@yoursite.com</p>
 
<p>O script procura por uma lista de elementos pela tag 'a' do html para fazer download, caso tenha necessidade poderá olhar em:
http://selenium-python.readthedocs.io/locating-elements.html para verificar outros tipos de elementos que podem ser usados para o mesmo fim.</p>



