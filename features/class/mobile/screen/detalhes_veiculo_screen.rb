class DetalhesVeiculoScreen < BaseTeste
  def initialize
    @imagem_carro = 'imgCar'
    @label_valor_carro = 'tvValue'
    @label_descricao_carro = 'tvCarDesc'
    @label_modelo_carro = 'tvCarName'
    @label_ano_carro = 'tvYearValue'
    @label_km_carro = 'tvKmValue'
    @label_cor_carro = 'tvColorValue'
  end
    
  def validar_imagem_carro
    $wait.until { element_on_screen_id?(@imagem_carro) }
    element_on_screen_id?(@imagem_carro)
  end

  def selecionar_veiculo(veiculo)
    scroll_by_text(veiculo)
    click_by_text(veiculo)
  end

  def validar_nome_modelo_carro
    $wait.until { element_on_screen_id?(@label_modelo_carro) }
    text_of_id(@label_modelo_carro)
  end

  def validar_descricao_carro
    $wait.until { element_on_screen_id?(@label_descricao_carro) }
    text_of_id(@label_descricao_carro)
  end

  def validar_valor_carro
    $wait.until { element_on_screen_id?(@label_valor_carro) }
    text_of_id(@label_valor_carro)
  end

  def validar_ano_carro
    $wait.until { element_on_screen_id?(@label_ano_carro) }
    text_of_id(@label_ano_carro)
  end

  def validar_km_carro
    $wait.until { element_on_screen_id?(@label_km_carro) }
    text_of_id(@label_km_carro)
  end

  def validar_cor_carro
    $wait.until { element_on_screen_id?(@label_cor_carro) }
    text_of_id(@label_cor_carro)
  end

  def validar_nome_modelo_carro
    $wait.until { element_on_screen_id?(@label_modelo_carro) }
    text_of_id(@label_modelo_carro)
  end

end