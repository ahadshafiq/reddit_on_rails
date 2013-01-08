class LinksController < ApplicationController

	def show
	end
	
	def new
		@link = Link.new
	end

	def create
		@link = Link.new(params[:link])
		respond_to do |format|
	      if @link.save
	        format.html { redirect_to @link, notice: 'Link was successfully created.' }
	        format.json { render json: @link, status: :created, location: @link }
	      else
	        format.html { render action: "new" }
	        format.json { render json: @link.errors, status: :unprocessable_entity }
	      end
	    end
	end
end


# def show
#     @job = Job.find(params[:id])

#     respond_to do |format|
#       format.html # show.html.erb
#       format.json { render json: @job }
#     end
#   end

#   # GET /jobs/new
#   # GET /jobs/new.json
#   def new
#     @job = Job.new

#     respond_to do |format|
#       format.html # new.html.erb
#       format.json { render json: @job }
#     end
#   end

#   # GET /jobs/1/edit
#   def edit
#     @job = Job.find(params[:id])
#   end

#   # POST /jobs
#   # POST /jobs.json
#   def create
#     @job = Job.new(params[:job])

#     respond_to do |format|
#       if @job.save
#         format.html { redirect_to @job, notice: 'Job was successfully created.' }
#         format.json { render json: @job, status: :created, location: @job }
#       else
#         format.html { render action: "new" }
#         format.json { render json: @job.errors, status: :unprocessable_entity }
#       end
#     end
#   end