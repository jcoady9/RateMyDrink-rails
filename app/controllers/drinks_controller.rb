class DrinksController < ApplicationController
	before_action :set_beverage

	def index
		@drinks = beverage.all
	end

	def show
		@drink = Drink.find(params[:id])
	end

	def new
		@drink = Drink.new
	end

	def edit
		# not implemented
		render status: 501
	end

	def create
		@drink = Drink.new(drink_params)
		if @drink.save
			redirect_to @drink
		else 
			render 'new'
		end
	end

	def update
		# not implemented
		render status: 501
	end

	def destroy
		@drink = Drink.find(params[:id])
		@drink.destroy
		redirect_to drinks_path
	end

	private 

		def drink_params

			drink_class = nil

			Drink.beverage_types.each do |drink|
				if params.has_key?(drink.downcase.to_sym)
					drink_class = drink.downcase.to_sym
				end
			end

			params.require(drink_class).permit(:name, :description, :rating, :drink_type, :abv)
		end

		def set_beverage
			@type = beverage_type
		end

		def beverage_type
			Drink.beverage_types.include?(params[:type]) ? params[:type] : "Drink"
		end

		def beverage
			beverage_type.constantize
		end

end
