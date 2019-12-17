#Criar Empregado
Dado("a API Criar Empregados definida") do
  @manter_user = Crud.new
end

Quando("é enviada a requisição para criar empregado") do
  $response = @manter_user.create
end
  
Então("posso visualizar as informações do registro") do
  expect(@manter_user.create.code).to eq (200)
  puts $response.body
end 

#Consultar Empregado
Dado("a API Consultar Empregados definida") do
  @manter_user = Crud.new
end

Quando("é enviada a requisição para consultar o empregado") do
  $response = @manter_user.create
  expect(@manter_user.create.code).to eq (200)
  puts $response.body
  @id = JSON.parse($response)['id']
end    
                                                            
Então("posso visualizar as informações retornadas") do
  puts @manter_user.retrieve(@id)
  expect(@manter_user.retrieve(@id).code).to eq (200) 
end  
 
#Alterar Empregado
 Dado("a API atualizar Empregados definida") do                                 
  @manter_user = Crud.new
end                                                                            
                                                                               
Quando("é enviada a requisição para alterar o empregado") do
  $response = @manter_user.create
  expect(@manter_user.create.code).to eq (200)
  puts $response.body
  @id = JSON.parse($response)['id'] 
end                                                                            
                                                                               
Então("posso ver que que o empregado foi alterado") do 
   puts @manter_user.update(@id)
   expect(@manter_user.update(@id).code).to eq (200) 
 end            

#Remover Empregado
Dado("a API remover Empregados definida") do
  @manter_user = Crud.new
end

Quando("é enviada a requisição para remover o empregado") do
  $response = @manter_user.create
  expect(@manter_user.create.code).to eq (200)
  puts $response.body
  @id = JSON.parse($response)['id']
end

Então("posso visualizar a mensagem de sucesso da operação") do
  puts @manter_user.delete(@id)
  expect(@manter_user.delete(@id).code).to eq (200) 
end
                                                              
                                                                            