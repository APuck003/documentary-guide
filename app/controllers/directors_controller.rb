class DirectorsController < ApplicationController
    def index
        @director = Director.all
    end

    def show
        @director = Director.find(params[:id])
    end

    def create
        Director.create(director_params)
        redirect_to directors_path
    end

    def edit
        @director = Director.find(params[:id])
    end

    def update
        director = Director.find(params[:id])
        director.update(director_params)
        redirect_to director
    end

    def destroy
        director = Director.find(params[:id])
        director.destroy
        redirect_to directors_path
    end

    private

    def director_params
        params.require(:director).permit(:name, :country, :yob, :bio)
    end
