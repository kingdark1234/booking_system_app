class EventsController < ApplicationController
  respond_to :js, :html, :json
	def index
		@events = Event.all
		respond_with @events
	end

	def show
		
	end

	def edit
   	 	@event = get_event
 	end

  	def new
  	    @event = Event.new
 	end

 	def json
 		respond_with (@event = Event.all)
 	end

 	def update
    	@event = get_event
   	    if @event.update_attributes(params[:event])
      		redirect_to root_path
    	else
      		render :edit
    	end
  	end

	def create
	    @event = Event.new(params[:event])
	    if @event.save
	      redirect_to(root_path)
	    else
	      render :new 
	    end
	end

	def destroy
        @event = get_event
        flash[:notice] = "Post could not be deleted" unless @event.destroy
        redirect_to root_path
    end

	private
	  	def get_event
	        @eventable.event.find(params[:id])
	  	end
	  	
	end


