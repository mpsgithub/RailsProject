class TopicsController < ApplicationController
	def index
		@topics = Topic.where(subcategory_id: params[:id])
	end	

	def show
		# render "math"
		# fail
		@id = params[:id]
		@topic = Topic.find(params[:id])
	end
end	