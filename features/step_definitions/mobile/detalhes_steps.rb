Quando('selecionar um veiculo {string}') do |veiculo|
  detalhes.selecionar_veiculo(veiculo)
  detalhes.validar_imagem_carro
end
  
Entao('devo visualizar o {string}') do |modelo|
   expect(detalhes.validar_nome_modelo_carro).to eq(modelo)
  end

E('devo visualizar a descricao {string}') do |descricao|
  expect(detalhes.validar_descricao_carro).to eq(descricao)
end

E('devo visualizar o valor {string}') do |valor|
  valor_carro = detalhes.validar_valor_carro
  expect(valor_carro.to_f).to eql(valor.to_f)
end

E('devo visualizar o ano {string}') do |ano|
  expect(detalhes.validar_ano_carro).to eq(ano)
end

E('devo visualizar a quantidade de km {string}') do |km|
  expect(detalhes.validar_km_carro).to eq(km)
end

E('devo visualizar a cor do veiculo {string}') do |cor|
  expect(detalhes.validar_cor_carro).to eq(cor)
end
