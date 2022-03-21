#language: pt

@mobile
Funcionalidade: Validar Listagem Home

  @listagem_veiculos
  Cenário: Validar listagem de veiculos na home
    Dado que eu abrir a aplicação
    Quando visualizar uma lista de veiculos disponiveis
    Entao devo visualizar imagem
    E devo visualizar valor
    E devo visualizar modelo
    E devo visualizar ano com km
