# WebMotors - Teste Técnico JP
> API e Mobile Android

## Descrição
- Projeto com o objetivo de teste técnico para webmotos, cenários para API e Mobile Android.
- Os testes para mobile, foram realizados apenas para Android, a apk encontra-se dentro da pasta apk na raiz do projeto.

## Tech Stack utilizada
- Ruby, Cucumber, Rspec, Httparty, Appium

### Executar Testes
  Para executar os testes para parte técnica. pode ser da seguinte formas:
  ```  
  $ cucumber
  $ bundle exec cucumber

- Mobile
  $ cucumber -t @mobile
  
 - API
  $ cucumber -t @api 

```
 - Poderia também criar um arquivo Rakefile, porém acredito que para esse momento não seja necessário. mas se fosse para rodar real na squad é recomendado.


Para Mobile é necessário start o appium server:
 ```  
$ appium &

 ```  
### Relatório e Telas de Evidências 

- Foi criado o relatório de cada execução usando o report builder, localização: Pasta de relatorios na Raiz do projeto, arquivo "cucumber_relatorio"
- Foi criado uma pasta com as screenshot dos testes mobile, Localização: Pasta relatorios/screenshot
