class TopicsController < ApplicationController
	def index
		@topics = Topic.where(subcategory_id: params[:id])
	end	

	def show
		@topic = Topic.find(params[:id])
	end
end	