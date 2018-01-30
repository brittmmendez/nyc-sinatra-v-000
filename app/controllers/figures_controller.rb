class FiguresController < ApplicationController

  get '/figures/new' do
    erb :'/figures/new'
    #create form
  end

  post '/figures' do
    #create it and redirect to show figures
  end

  get '/figures' do
    @figures=Figure.all
    erb :'/figures/index'
    #create it and redirect to show figures
  end




end
