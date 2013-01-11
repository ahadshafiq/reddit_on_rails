class PagesController < ApplicationController

	def index
		@links = Link.paginate(:page => params[:page], :per_page => 25)

	    respond_to do |format|
	      format.html # index.html.erb
	      format.json { render json: @links }
	    end
	end
	
end
