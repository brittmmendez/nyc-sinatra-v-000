class FiguresController < ApplicationController

  get '/figures/new' do
    erb :'/figures/new'
  end

  post '/figures' do
    @figure=Figure.create(params["figure"])

    if !params[:title][:name].empty?
      @figure.titles << Title.create(params[:title])
    end
    
    if !params[:landmark][:name].empty?
      @figure.landmarks<<Landmark.create(params[:landmark])
    end

    @figure.save

    redirect to "/figures/#{@figure.id}"
  end

  get '/figures' do
    @figures=Figure.all
    erb :'/figures/index'
  end

  get '/figures/:id' do
    @figure=Figure.find(params[:id])
    erb :'/figures/show'
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
