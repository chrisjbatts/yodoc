require 'sinatra'
require 'json'

doctors = {'2575276' => { name: 'Simon Christopher Blease', id: '2575276'}}

get '/gmc/:id' do
  content_type :json

  doctors[params[:id]].to_json
end