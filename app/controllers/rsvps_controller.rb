class RsvpsController < ApplicationController

  def index
    @rsvps = Rsvp.all
  end

  def show
    @rsvp = Rsvp.find(params[:id])
  end

  def new
    @rsvp = Rsvp.new
  end

  def create
    @rsvp = Rsvp.new(rsvp_params)
    if @rsvp.save
      respond_to do |format|
        format.html { redirect_to @rsvp, notice: 'Rsvp was successfully created.' }
        format.js
      end
    else

    end
  end

  private

    # Only allow a trusted parameter "white list" through.
    def rsvp_params
      params.require(:rsvp).permit(:name, :attending, :number)
    end
end
