class HomeScreen < BaseTeste
  def initialize
    @txt_titulo_home = '//android.widget.TextView[@text="Carros"]'
    @lista_imagem_carro = 'imgCar'
    @lista_valor_carro = 'tvValue'
    @lista_modelo_carro = 'tvCarName'
    @lista_ano_km_carro = 'tvYearKm'
    @lista_carro = 'rvCars'
  end
  
  def validar_tela_home
    $wait.until { element_on_screen?(@txt_titulo_home) }
    element_on_screen?(@txt_titulo_home)
  end

  def listagem_carros
    scroll_by_text('Agile')
    $wait.until { element_on_screen_id?(@lista_carro) }
    element_on_screen_id?(@lista_carro)  
  end

  def lista_valor_carros
    $wait.until { elements_on_screen_id?(@lista_valor_carro) }
    elements_on_screen_id?(@lista_valor_carro)
  end

  def lista_modelo_carros
    $wait.until { elements_on_screen_id?(@lista_modelo_carro) }
    elements_on_screen_id?(@lista_modelo_carro)
  end

  def lista_ano_km_carros
    $wait.until { elements_on_screen_id?(@lista_ano_km_carro) }
    elements_on_screen_id?(@lista_ano_km_carro)
  end

  def lista_imagem_carros
    $wait.until { elements_on_screen_id?(@lista_imagem_carro) }
    elements_on_screen_id?(@lista_imagem_carro)
  end
end