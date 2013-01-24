class AreasController < ApplicationController
  respond_to :js, :html, :json
	def index
		@areas = Area.all
	end

	def show
		@area = get_area
	end

	def edit
   	 	@area = get_area
 	end

  	def new
  	    @area = Area.new
 	end

 	def update
    	@area = get_area
   	    if @area.update_attributes(params[:area])
      		redirect_to root_path
    	else
      		render :edit
    	end
  	end

	def create
	    @area = Area.new(params[:area])
	    if @area.save
	      redirect_to(root_path)
	    else
	      render :new 
	    end
	end

	def destroy
        @area = get_area
        flash[:notice] = "Post could not be deleted" unless @area.destroy
        redirect_to root_path
    end

private
  	def get_area
        Area.find(params[:id])
  	end
end
