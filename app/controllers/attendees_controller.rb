class AttendeesController < ApplicationController

	http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy

	def create
		@event = Event.find(params[:event_id])
		@attendee = @event.attendees.create(attendee_params)
		redirect_to event_path(@event)
	end

	def destroy
		@event = Event.find(params[:event_id])
		@attendee = @event.attendees.find(params[:id])
		@attendee.destroy
		redirect_to event_path(@event)
	end

	private
	def attendee_params
		params.require(:attendee).permit(:attendee_name, :response)
	end
end
