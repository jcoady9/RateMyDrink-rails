class DrinksController < ApplicationController

	def index
		@drinks = Drink.all
	end

	def show
		@drink = Drink.find(params[:id])
	end

	def new
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
			params.require(:drink).permit(:name, :description, :rating)
		end

end
