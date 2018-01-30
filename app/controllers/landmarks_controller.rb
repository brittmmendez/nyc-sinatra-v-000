class LandmarksController < ApplicationController
  get '/landmarks/new' do
    erb :'/landmarks/new'
    #create form
  end

  post '/landmarks' do
    #create it and redirect to show figures
  end

  get '/landmarks' do
    @landmarks=Landmark.all
    erb :'/landmarks/index'
    #create index to iterate through all
  end

  get '/landmarks/:id' do
    @landmark=Landmark.find(params[:id])
    erb :'/landmarks/show'
    #create show to display all info
  end

  get '/landmarks/:id/edit' do
    @landmark=Landmark.find(params[:id])
    erb :'/landmarks/edit'
    #create edit form
  end

  post '/landmarks/:id' do
    @landmark=Landmark.find(params[:id])
    #write code here to update figure instace and redirect to '/figures/:id' to  show
  end
end
