class RoomsController < ApplicationController
  respond_to :js, :html, :json
	def index
		@rooms = Room.order_by_room_name
	end

	def show
		@room = get_room
	end

	def edit
   	@room = get_room
 	end

  def new
  	@room = Room.new
 	end

 	def update
    	@room = get_room
   	  if @room.update_attributes(params[:room])
      		redirect_to root_path
    	else
      		render :edit
    	end
  end

	def create
	    @room = Room.new(params[:room])
	    if @room.save
	      redirect_to(root_path)
	    else
	      render :new 
	    end
	end

	def destroy
        @room = get_room
        flash[:notice] = "Post could not be deleted" unless @room.destroy
        redirect_to root_path
    end

private
  	def get_room
        Room.find(params[:id])
  	end
end

