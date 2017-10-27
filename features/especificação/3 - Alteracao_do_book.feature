#language: pt 
#utf-8


Funcionalidade: Alterar Book
Eu como sistema intermediário
Quero fazer a requisição de alteração de um livro
Para corrigir um trecho do livro


Contexto: Ter credenciais de acesso Services

@put
Cenário: Alterarção em um book
Quando fizer a alteração em um livro para corrigir um trecho especifico
Então valido o codigo de resposta que será 200 para alteração esperado