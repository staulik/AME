#language: pt

Funcionalidade: Manter o cadastro de Empregados através da API
Como um aplicação de serviço
Quero enviar requisições para o cadastro de Empregados
para verificar se o cadastro funciona corretamente

@criar
Cenario: Cadastrar Empregado
Dado a API Criar Empregados definida
Quando é enviada a requisição para criar empregado
Então posso visualizar as informações do registro 

@consultar
Cenario: Consultar Empregado
Dado a API Consultar Empregados definida
Quando é enviada a requisição para consultar o empregado 
Então posso visualizar as informações retornadas

@atualizar
Cenario: Atualizar Empregado
Dado a API atualizar Empregados definida
Quando é enviada a requisição para alterar o empregado 
Então posso ver que que o empregado foi alterado

@deletar
Cenario: Remover Empregado
Dado a API remover Empregados definida
Quando é enviada a requisição para remover o empregado 
Então posso visualizar a mensagem de sucesso da operação

