class AnimalsController < ApplicationController
    def index
        animals = Animal.all
        render json: animals
    end
    def show
        animal = Animal.find(params[:id])
        render json: animal
    end
    def update
        animals = Animal.find(params[:id])
        animals.update(animal_params)
       if animals.valid?
         render json: animals
       else
        render json: animals.errors
       end
    end

    private
    def animal_params
        params.require(:animal).permit(:name, :latin, :kingdom)
    end
end