require 'HTTParty'
require 'httparty/request'
require 'httparty/response/headers'
#require_relative '../hooks/hook'

class Crud

include HTTParty
base_uri 'http://dummy.restapiexample.com/api/v1'

def create 
    nome = Faker::UniqueGenerator.clear
    nome = Faker::Name.unique.first_name
    salario = Faker::Number.decimal(l_digits: 4, r_digits: 2)
    idade   = Faker::Number.number(digits: 2)
    $body = {name: nome, salary: salario, age: idade }.to_json
  
  $headers = {
    'Accept' => 'application/vnd.tasksmanager.v2',
    'Content-Type' => 'application/json'
  }

  self.class.post('/create', body: $body, headers: $headers) 
end

def retrieve(id)
  self.class.get("/employee/#{ id }")
end 

def delete(id)
  self.class.delete("/delete/#{ id }")
end

def update(id)
  nome = Faker::Name.unique.first_name
  #nome = Faker::UniqueGenerator.clear
  #nome = "Silverado_AutoAUMATION"
  salario = '4500,28'
  idade   = "36"
  body = {name: nome, salary: salario, age: idade }.to_json
   
  headers = {
     'Accept' => 'application/vnd.tasksmanager.v2',
     'Content-Type' => 'application/json'
   }
  self.class.put("/update/#{ id }", body: body, headers: headers)
end
end