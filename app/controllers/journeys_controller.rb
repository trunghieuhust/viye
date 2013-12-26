class JourneysController < ApplicationController
  before_action :set_journey, only: [:show, :edit, :update, :destroy]

  # GET /journeys
  # GET /journeys.json
  def index
    @journeys = Journey.all
  end

  # GET /journeys/1
  # GET /journeys/1.json
  def show
    @journey = Journey.find(params[:id])
    @journey_events = @journey.journeyEvents
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: json_out = {
        "timeline"=>
        {
          "headline"=>"",
          "type"=>"default",
          "text"=>"",
          "asset"=> {
          "media"=>"",
          "credit"=>"",
          "caption"=>""
        },

          "date"=> @journey_events.map { |timeline| {"startDate" => timeline.startdate.strftime("%Y,%m,%d"),"endDate" => timeline.enddate.strftime("%Y,%m,%d"),"headline" => timeline.headline,"text" => timeline.content, "asset" => {"media" => timeline.media}}},


          "era"=> [
            {
          "startDate"=>"2011,12,10",
          "endDate"=>"2011,12,11",
          "headline"=>"",
          "text"=>"",
          "tag"=>""
        }

        ]
        }
      } }
    end

  end

  # GET /journeys/new
  def new
    @journey = Journey.new
  end

  # GET /journeys/1/edit
  def edit
  end

  # POST /journeys
  # POST /journeys.json
  def create
    @journey = Journey.new(journey_params)
    @journey.user = current_user

    respond_to do |format|
      if @journey.save
        format.html { redirect_to @journey, notice: 'Journey was successfully created.' }
        format.json { render action: 'show', status: :created, location: @journey }
      else
        format.html { render action: 'new' }
        format.json { render json: @journey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /journeys/1
  # PATCH/PUT /journeys/1.json
  def update
    respond_to do |format|
      if @journey.update(journey_params)
        format.html { redirect_to @journey, notice: 'Journey was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @journey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /journeys/1
  # DELETE /journeys/1.json
  def destroy
    @journey.destroy
    respond_to do |format|
      format.html { redirect_to journeys_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_journey
      @journey = Journey.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def journey_params
      params.require(:journey).permit(:name, :description)
    end
end
