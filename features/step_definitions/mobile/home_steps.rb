Dado('que eu abrir a aplicação') do
  home_screen.validar_tela_home
end

Quando('visualizar uma lista de veiculos disponiveis') do
  expect(home_screen.listagem_carros).to be true
end

Entao('devo visualizar imagem') do
  expect(home_screen.lista_imagem_carros).to be true
end

Entao('devo visualizar valor') do
    expect(home_screen.lista_valor_carros).to be true
end

Entao('devo visualizar modelo') do
    expect(home_screen.lista_modelo_carros).to be true
end

Entao('devo visualizar ano com km') do
    expect(home_screen.lista_ano_km_carros).to be true
end
