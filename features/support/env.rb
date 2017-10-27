require 'cucumber'
require 'rspec/expectations'
require 'httparty'
require 'pry'
require 'yaml'



$ambiente = YAML.load_file('./config/enviroment.yml')


$massa = YAML.load_file('./fixtures/default_data.yml')


