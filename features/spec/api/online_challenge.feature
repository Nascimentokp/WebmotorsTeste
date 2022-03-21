#language: pt

@api
Funcionalidade: Validar API WebMotors Teste Técnico

  @make
  Cenário: Consultar serviço de marcas sem filtro
    Dado que eu quero consultar as marcas de veiculos
    Quando realizar uma requisição para consultar as marcas de veiculos
    Entao devo visualizar uma lista de marca disponivel
      | Name      |
      | Chevrolet |
      | Honda     |
      | Ford      |

  @model
  Esquema do Cenário: Consultar serviço modelo
    Dado que eu quero consultar os modelos pela marca
    Quando realizar uma requisição com o <id> da marca
    Entao devo visualizar o modelo de acordo com a marca informada
      | Name  |
      | City  |
      | CRV   |
      | Fit   |
    Exemplos:
      | id      |
      | '2'     |
     
  @version
  Esquema do Cenário: Consultar versão do modelo
    Dado que eu quero consultar a versão de modelo
    Quando realizar uma requisição com o <id> da modelo
    Entao devo visualiar a versao de acordo com o modelo informado
      | Name  |
      | 1.5 DX 16V FLEX 4P AUTOMÁTICO                     |
      | 1.5 LX 16V FLEX 4P MANUAL                         |
      | 2.0 EXL 4X4 16V GASOLINA 4P AUTOMÁTICO            |
      | 1.8 16V EVO FLEX FREEDOM OPEN EDITION AUTOMÁTICO  |
      | 1.0 MPI EL 8V FLEX 4P MANUAL                      |
    Exemplos:
      | id  |
      | '8' |

  @vehicles
  Esquema do Cenário: Consultar informações do veiculo pelo modelo
    Dado que eu quero consultar a veiculo pelo modelo
    Quando realizar uma requisição com o <id> da modelo
    Entao devo visualiar o veiculo de acordo com o modelo informado
    E devo visualiar a marca do veiculo <make>
    E devo visualiar o modelo <model>
    E devo visualiar o versao do veiculo <version>
    E devo visualiar a quantidade de km do veiculo <km>
    E devo visualiar o preco <price>
    E devo visualiar o ano do modelo <ano_model>
    E devo visualiar o ano de fabricacao <ano_fab>
    E devo visualiar a cor <cor>
    
    Exemplos:
      |id      | make   | model      | version                            | km      | price      | ano_model | ano_fab | cor      | 
      |'3'     | 'Ford' | 'Ecosport' | '1.6 FREESTYLE 16V FLEX 4P MANUAL' | 93000   | '45000,00' | 2013      | 2012    | 'Branca' |
      