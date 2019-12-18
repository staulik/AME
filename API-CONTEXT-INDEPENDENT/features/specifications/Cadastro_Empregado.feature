#language: pt

Funcionalidade: Manter o cadastro de Empregados através da API
Como um aplicação de serviço
Quero enviar requisições para o cadastro de Empregados
para verificar se o cadastro funciona corretamente

Contexto:
Dado a API Manter Empregados definida

@criar
Cenario: Cadastrar Empregado
Quando é enviada a requisição para criar empregado
Então posso visualizar as informações do registro 

@consultar
Cenario: Consultar Empregado
Quando é enviada a requisição para consultar o empregado 
Então posso visualizar as informações retornadas

@atualizar
Cenario: Atualizar Empregado
Quando é enviada a requisição para alterar o empregado 
Então posso ver que que o empregado foi alterado

@deletar
Cenario: Remover Empregado
Quando é enviada a requisição para remover o empregado 
Então posso visualizar a mensagem de sucesso da operação

