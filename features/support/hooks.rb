# frozen_string_literal: true

require 'report_builder'
require 'date'
require_relative "#{Dir.pwd}/features/support/carregar_arquivo.rb"

Before('@mobile') do |_scenario|
  $driver.start_driver
end

After('@mobile') do |scenario|
  time = Time.new
  $sufixo = ('falha' if scenario.failed?) || 'sucesso'
  $name = scenario.name.tr(' ', '_').downcase
  foto = "relatorios/screenshot/#{$sufixo}_#{$name}_#{time.day}-#{time.month}-#{time.year}-#{time.hour}-#{time.min}.png"
  $driver.screenshot(foto)
  $driver.terminate_app('br.com.siatiquosque.webmotorstest')
  $driver.driver_quit
end

at_exit do
  time = Time.now.to_s
  ReportBuilder.configure do |config|
    config.json_path = 'relatorios/report.json'
    config.report_path = 'relatorios/cucumber_relatorio'
    config.report_types = [:html]
    config.report_title = 'Relatório de Testes automatizados - Teste técnico JP'
    config.compress_images = false
    config.color = 'green'
    config.additional_info = { 'Project name' => 'WebMotors', 'Platform' => 'Back e Front',
                               'Report generated' => time }
  end
  ReportBuilder.build_report
end
