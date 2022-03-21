# frozen_string_literal: true

Dado('que eu quero consultar as marcas de veiculos') do
  online_challenge.consulta_make
end

Quando('realizar uma requisição para consultar as marcas de veiculos') do
  @retorno = online_challenge.realizar_busca
end

Entao('devo visualizar uma lista de marca disponivel') do |table|
  @data = table.hashes
  expect(@retorno.code).to eql(200)
  expect(@retorno.parsed_response[0]).to include(@data[0])
  expect(@retorno.parsed_response[1]).to include(@data[1])
  expect(@retorno.parsed_response[2]).to include(@data[2])
end


Dado('que eu quero consultar os modelos pela marca') do
  online_challenge.consulta_model
end

Quando('realizar uma requisição com o {string} da marca') do |marca|
  @retorno_marca = online_challenge.consulta_por_id(marca)
end

Entao('devo visualizar o modelo de acordo com a marca informada') do |table|
  @data = table.hashes
  expect(@retorno_marca.code).to eql(200)
  expect(@retorno_marca.parsed_response[0]).to include(@data[0])
  expect(@retorno_marca.parsed_response[1]).to include(@data[1])
  expect(@retorno_marca.parsed_response[2]).to include(@data[2])
end

Dado('que eu quero consultar a versão de modelo') do
  online_challenge.consulta_versao
end

Quando('realizar uma requisição com o {string} da modelo') do |modelo|
  @retorno_modelo = online_challenge.consulta_por_id(modelo)
end

Entao('devo visualiar a versao de acordo com o modelo informado') do |table|
  @data = table.hashes
  expect(@retorno_modelo.code).to eql(200)
  expect(@retorno_modelo.parsed_response[0]).to include(@data[0])
  expect(@retorno_modelo.parsed_response[1]).to include(@data[1])
  expect(@retorno_modelo.parsed_response[2]).to include(@data[2])
  expect(@retorno_modelo.parsed_response[3]).to include(@data[3])
  expect(@retorno_modelo.parsed_response[4]).to include(@data[4])
end

Dado('que eu quero consultar a veiculo pelo modelo') do
  online_challenge.consulta_veiculo
end

Entao('devo visualiar o veiculo de acordo com o modelo informado') do 
  expect(@retorno_modelo.code).to eql(200)
end

E('devo visualiar a marca do veiculo {string}') do |marca|
  expect(@retorno_modelo.parsed_response[0]['Make']).to eq(marca)
end

E('devo visualiar o modelo {string}') do |modelo|
  expect(@retorno_modelo.parsed_response[0]['Model']).to eq(modelo)
end

E('devo visualiar o versao {string}') do |versao|
  expect(@retorno_modelo.parsed_response[0]['Version']).to eq(versao)
end

E('devo visualiar o versao do veiculo {string}') do |versao|
  expect(@retorno_modelo.parsed_response[0]['Version']).to eq(versao)
end

E('devo visualiar a quantidade de km do veiculo {int}') do |km|
  expect(@retorno_modelo.parsed_response[0]['KM']).to eq(km)
end

E('devo visualiar o preco {string}') do |preco|
  expect(@retorno_modelo.parsed_response[0]['Price']).to eq(preco)
end

E('devo visualiar o ano do modelo {int}') do |ano_modelo|
  expect(@retorno_modelo.parsed_response[0]['YearModel']).to eq(ano_modelo)
end

E('devo visualiar o ano de fabricacao {int}') do |ano_fab|
  expect(@retorno_modelo.parsed_response[0]['YearFab']).to eq(ano_fab)
end

E('devo visualiar a cor {string}') do |cor|
  expect(@retorno_modelo.parsed_response[0]['Color']).to eq(cor)
end
