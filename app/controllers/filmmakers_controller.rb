class FilmmakersController < ApplicationController
    def index
        @filmmakers = Filmmaker.all
        'filmmaker/index'
    end
    def show
        @filmmaker = Filmmaker.find(params[:id])
        @films = @filmmaker.films
    end
    def new
        @filmmaker = Filmmaker.new
    end
    def create
        @filmmaker = Filmmaker.new(name: params[:filmmaker][:name])
        if @filmmaker.save
            return  redirect_to filmmakers_path
        end
        render :new 
    end
    def edit
        @filmmaker = Filmmaker.find(params[:id])
    end
    def update
        @filmmaker = Filmmaker.find(params[:id])
        if @filmmaker.update(name: params[:filmmaker][:name])
        return  redirect_to filmmakers_path
        end
        render :edit 
    end
end