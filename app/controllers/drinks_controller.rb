class DrinksController < ApplicationController
	before_action :set_beverage

	def index
		@drinks = beverage.all
	end

	def show
		@drink = beverage.find(params[:id])
	end

	def new
		@drink = beverage.new
	end

	def edit
		# not implemented
		render status: 501
	end

	def create
		@drink = nil
		case drink_class
			when "Beer"
				@drink = Beer.new(drink_params)
			when "Liquor"
				@drink = Liquor.new(drink_params)
			else
				render status: 500
		end

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
		@drink = beverage.find(params[:id])
		@drink.destroy
		redirect_to drinks_path
	end

	private 

		def drink_class
			Drink.beverage_types.each do |drink|
				if params.has_key?(drink.downcase.to_sym)
					return drink
				end
			end
		end

		def drink_params
			params.require(drink_class.downcase.to_sym).permit(:name, :description, :rating, :drink_type, :abv)
		end

		def set_beverage
			@type = beverage_type
		end

		def beverage_type
			Drink.beverage_types.include?(params[:type]) ? params[:type] : "Drink"
			# params[:type] if params[:type].in? Drink.beverage_types
		end

		def beverage
			beverage_type.constantize
		end

end
