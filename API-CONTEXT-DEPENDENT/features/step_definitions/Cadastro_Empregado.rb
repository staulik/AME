#Criar Empregado
Dado("a API Manter Empregados definida") do
  @manter_user = Crud.new
end

#Criar Empregado
Quando("é enviada a requisição para criar empregado") do
  $response = @manter_user.create
end
  
Então("posso visualizar as informações do registro") do
  expect(@manter_user.create.code).to eq (200)
  puts $response.body
end 

#Consultar Empregado
Quando("é enviada a requisição para consultar o empregado") do
  puts $response.body
  @id = JSON.parse($response)['id']
end    
                                                            
Então("posso visualizar as informações retornadas") do
  puts @manter_user.retrieve(@id)
  expect(@manter_user.retrieve(@id).code).to eq (200)
end  
 
#Atualizar Empregado
Quando("é enviada a requisição para alterar o empregado") do
  puts $response.body
  @id = JSON.parse($response)['id'] 
end                                                                            
                                                                               
Então("posso ver que que o empregado foi alterado") do 
   puts @manter_user.update(@id)
   expect(@manter_user.update(@id).code).to eq (200)
end            

#Remover Empregado
Quando("é enviada a requisição para remover o empregado") do
  puts $response.body
  @id = JSON.parse($response)['id']
end

Então("posso visualizar a mensagem de sucesso da operação") do
  puts @manter_user.delete(@id)
  expect(@manter_user.delete(@id).code).to eq (200)
end
                                                              
                                                                            