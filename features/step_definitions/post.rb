Dado("que eu faça um POST no endpoint clientes") do
  @body = {
    "postId": 666,
    "id": 666,
    "name": Faker::StarWars.planet,
    "email": Faker::Internet.email,
    "body": Faker::ChuckNorris.fact
  }.to_json
  @post_clients = HTTParty.post 'https://jsonplaceholder.typicode.com/comments',
  :body => @body,
  :headers => {"Content-Type" => 'application/json'}
end

Entao("um novo clientes será cadastrados") do
  puts @post_clients.body
  puts @post_clients.message
  expect(@post_clients.code).to eq 201
end
