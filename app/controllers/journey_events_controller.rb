class JourneyEventsController < ApplicationController
	before_filter except: [:create]

	def create
		@journey = Journey.find(params[:journey_id])
		@journeyEvent = @journey.journeyEvents.create!(journey_event_params)
		redirect_to @journey
	end
		def journey_event_params
		params.require(:journey_event).permit(:journey_id,:startdate, :enddate, :content, :media, :mediacaption, :mediacredit, :headline)
	end
	def destroy
		@journeyEvent = JourneyEvent.find(params[:id])
		@journeyEvent.destroy
		respond_to do |format|
			format.html { redirect_to :back}
			format.json { head :no_content }
		end
	end


end
