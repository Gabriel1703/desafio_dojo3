#language: pt 
#utf-8


Funcionalidade: Buscar Book existente
Como uma aplicação cliente
Desejo buscar um book
Para que haja conteudo no novo site


Contexto: Ter credenciais de acesso Services

@get
Cenário: Buscar um book
Quando buscar um book pelo id '1' no site através do service
Então o status code da resposta será mensagem 200



