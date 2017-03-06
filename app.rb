require 'sinatra/base'
require './lib/key_value.rb'


class ReturnMyValue < Sinatra::Base

  get '/set' do
    @pair = request.query_string
    KeyValue.store(@pair)
    erb :set
  end

  get '/get' do
    @key = request.query_string
    @value = KeyValue.retrieve(@key)
    erb :get
  end
end
