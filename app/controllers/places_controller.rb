class PlacesController < ApplicationController
    def index
        @places = Place.all
    end

    def show
        @place = Place.find(params[:id])
        #TODO show che user in this place
    end

    def new
        @place = Place.new
    end

    def create
        @place = Place.new(article_params)

        if @place.save
            redirect_to @place
        else
            render :new, status: :unprocessable_entity
        end
    end

    def edit
        @place = Place.find(params[:id])
    end

    def update
        @place = Place.find(params[:id])

        if @place.update(article_params)
            redirect_to @place
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @place = Place.find(params[:id])
        @place.destroy

        redirect_to root_path, status: :see_other
    end

    private
        def article_params
            params.require(:place).permit( :city, :region, :state, :number)
        end
end
