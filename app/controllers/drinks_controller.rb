class DrinksController < ApplicationController
	before_action :set_class

	def index
		@drinks = drink_subclass.all
	end

	def show
		@drink = Drink.find(params[:id])
	end

	def new
		@drink = Drink.new
	end

	def edit
	end

	def create
		@drink = Drink.new(drink_params)
		if @drink.save
			redirect_to @drink
		end
	end

	def update
	end

	def destroy
		@drink = Drink.find(params[:id])
		@drink.destroy
		redirect_to drinks_path
	end

	private 

		def drink_params
			params.require(:drink).permit(:name, :description, :rating, :drink_type, :abv)
		end

		def set_class
			@type = class_type
		end

		def class_type
			Drink.types.include?(params[:type]) ? params[:type] : "Drink"
		end

		def drink_subclass
			class_type.constantize
		end

end
