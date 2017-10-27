#language: pt 
#utf-8


Funcionalidade: Criar Book
Como uma aplicação cliente
Desejo criar um book
Para que haja conteudo novo site


Contexto: Ter credenciais de acesso Services

@post
Cenário: Criar um novo book
Quando cadastrar um novo book no site.
Então o status code da resposta será 200

