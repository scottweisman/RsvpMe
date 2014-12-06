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

    respond_to do |format|
      if @rsvp.save
        format.html { redirect_to @rsvp, notice: 'Rsvp was successfully created.' }
        format.js
      else
        format.html { redirect_to @rsvp, notice: 'Something went wrong. Please try again.' }
        format.js
      end
    end
  end

  private

    # Only allow a trusted parameter "white list" through.
    def rsvp_params
      params.require(:rsvp).permit(:name, :attending, :number)
    end
end
