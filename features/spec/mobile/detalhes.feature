#language: pt

@mobile
Funcionalidade: Validar detalhes por veiculo

  @detalhes_veiculo
   Esquema do Cenário: Validar informações de um determinado veiculo
    Dado que eu abrir a aplicação
    Quando selecionar um veiculo <veiculo>
    Entao devo visualizar o <modelo> 
    E devo visualizar a descricao <descricao>
    E devo visualizar o valor <valor> 
    E devo visualizar o ano <ano> 
    E devo visualizar a quantidade de km <km>
    E devo visualizar a cor do veiculo <cor>
    
    Exemplos:
      | veiculo  | modelo              | descricao                                | valor          | ano         | km       | cor    | 
      | 'City'   | 'Honda City'        | '2.0 EXL 4X4 16V GASOLINA 4P AUTOMÁTICO' | 'R$ 59.000,00' | '2017/2018' | '0KM'    | 'Azul' |
      | 'Lancer' | 'Mitsubishi Lancer' | '2.0 EVO 4P AUTOMÁTICO'                  | 'R$ 49.000,00' | '2012/2012' | '47500KM'| 'Branco' |
