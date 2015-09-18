class SubcategoriesController < ApplicationController
	def index
		@subcategories = Subcategory.where(category_id: params[:id])
	end	
end	