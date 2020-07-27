class Api::V1::EventsController < ApplicationController
    def index
        events = Event.all
        render json: events
    end

    # def show
    #     event = Event.find(params[:id])
    #     render json: event
    # end

    def create
        # byebug
        event = Event.new(event_params)
        event.notif_time = event.notif_time.to_datetime
        event.save
        # byebug
        render json: event

    end

    def update
        event = Event.find(params[:id])
        event.update(event_params)
        render json: event
    end

    def destroy
        event = Event.find(params[:id])
        event.destroy
        render json: "Event was successfully destroyed"
    end

    private
    def event_params
        params.require(:event).permit(:title, :notif_time, :user_id)
    end
end
