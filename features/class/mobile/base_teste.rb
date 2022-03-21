class BaseTeste
    def click_id(value)
      $driver.find_element(:id, value.to_s).click
    end
  
    def click_by_text(value)
      $driver.find_element(:xpath, "//*[contains(@text,\"#{value}\")]").click
    end

    def click_by_css(value)
      $driver.find_element(:css, value.to_s).click
    end
  
    def click_xpath(value)
      $driver.find_element(:xpath, value.to_s).click
    end
  
    def click_accessibility_id(value)
      $driver.find_element(:accessibility_id, value.to_s).click
    end

    def send_keys_css(css, value)
      $driver.find_element(:css, css).send_keys(value) 
    end
  
    def send_keys_id(id, field)
      @driver.find_element(:id, id).send_keys(field)
    end
  
    def send_keys_xpath(xpath, field)
      @driver.find_element(:xpath, xpath).send_keys(field)
    end
  
    def send_keys_accessibility_id(accessibility_id, field)
      @driver.find_element(:accessibility_id, accessibility_id).send_keys(field)
    end
  
    def element_on_screen?(element)
      @driver.find_element(:xpath, element).displayed?
    end

    def element_on_screen_css?(element)
        @driver.find_element(:css, element).displayed?
    end
  
    def element_on_screen_id?(element)
      @driver.find_element(:id, element).displayed?
    end

    def elements_on_screen_id?(element)
        @driver.find_elements(:id, element)[1].displayed?
      end
  
    def element_on_screen_accessibility_id?(element)
      @driver.find_element(:accessibility_id, element).displayed?
    end
    
    def get_text_by_xpath(element)
      @driver.find_element(:xpath, element).text
    end
  
    def text_of_id(value)
      @driver.find_element(:id, value.to_s).text
    end
  
    def text_of_xpath(value, index)
      @driver.find_elements(:xpath, value.to_s)[index].text
    end
  
    def deslizar_devagar_para_baixo(element)
      touch_actions.scroll(:id, element.to_s, 10, 100).perform  
    end
  
    def scroll_by_text(value)
      find_element(:uiautomator, "new UiScrollable(new UiSelector().scrollable(true).instance(0)).scrollIntoView(new UiSelector().text(\"#{value}\"))")
    end
  end
  