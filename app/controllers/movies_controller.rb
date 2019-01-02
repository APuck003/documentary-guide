class MoviesController < ApplicationController

    def index
        @movie = Movie.all
    end
    
    def show
        @movie = Movie.find(params[:id])
    end

    def create
        Movie.create(movie_params)
        redirect_to movies_path
    end

    def edit
        @movie = Movie.find(params[:id])
    end

    def update
        movie = Movie.find(params[:id])
        movie.update(movie_params)
        redirect_to movie
    end

    def destroy
        movie = Movie.find(params[:id])
        movie.destroy
        redirect_to movies_path
    end

    private

    def movie_params
        params.require(:movie).permit(:title, :director, :year, :bio)
    end
end
