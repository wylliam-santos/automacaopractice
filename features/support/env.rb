require "capybara"
require "capybara/cucumber"
require "faker"

require_relative "actions"

World (Actions)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 120 #configuração para aumentar o timeout de procura de elemento em tela
  config.app_host = "http://automationpractice.com." #definindo a url padrão de acesso ao sistema
end
