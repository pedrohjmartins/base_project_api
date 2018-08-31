Dado("que eu faça um GET no endpoint clientes") do
  @get_clients = HTTParty.get 'https://jsonplaceholder.typicode.com/posts'
end

Entao("o retorno dele será todos os clientes cadastrados") do
  puts @get_clients.body
  puts "Quantidade de posts: " +@get_clients.size.to_s
  puts @get_clients.message
  puts @get_clients.code
  expect(@get_clients.code).to eq 200
end
