class FilmsController < ApplicationController
    def index
        # @films = Film.all
        @films = Film.published
        'films/index'
    end
    def show
        @film = Film.find(params[:id])
    end
    def new
        @film = Film.new
    end
    def create
        @film = Film.new(
            title: params[:film][:title],
            year: params[:film][:year],
            synopsis: params[:film][:synopsis],
            country: params[:film][:country],
            duration: params[:film][:duration],
            poster: params[:film][:poster],
            filmmaker_id: params[:film][:filmmaker_id],
            genre_id: params[:film][:genre_id]
        )
        if @film.save
            return  redirect_to root_path
        end
        render :new 
    end
    def edit
        @film = Film.find(params[:id])
    end
    def update
        @film = Film.find(params[:id])
        if @film.update(
            title: params[:film][:title],
            year: params[:film][:year],
            synopsis: params[:film][:synopsis],
            country: params[:film][:country],
            duration: params[:film][:duration],
            poster: params[:film][:poster],
            filmmaker_id: params[:film][:filmmaker_id],
            genre_id: params[:film][:genre_id]
            )
            return  redirect_to root_path
        end
        render :edit
    end
    def publish
        film = Film.find(params[:id])
        film.published!
        redirect_to root_path
    end
    def release
        film = Film.find(params[:id])
        film.released!
        redirect_to root_path
    end
end