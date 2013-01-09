class PagesController < ApplicationController

	def index
		@links = Link.all

	    respond_to do |format|
	      format.html # index.html.erb
	      format.json { render json: @links }
	    end
	end
	
end
