class CategoriesController < ApplicationController
	def index
		@categories = Category.where(subject_id: params[:id])
	end	
end	