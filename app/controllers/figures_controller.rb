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
    #create index to iterate through all
  end

  get '/figures/:id' do
    @figure=Figure.find(params[:id])
    erb :'/figures/show'
    #create show to display all info
  end

  get '/figures/:id/edit' do
    @figure=Figure.find(params[:id])
    erb :'/figures/edit'
    #create edit form
  end

  post '/figures/:id' do
    @figure=Figure.find(params[:id])
    #write code here to update figure instace and redirect to '/figures/:id' to  show
  end




end
