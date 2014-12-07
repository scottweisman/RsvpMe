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
        format.html { render "new", notice: 'Something went wrong. Please try again.' }
        format.js { render "new" }
      end
    end
  end

  def destroy
    @rsvp = Rsvp.find(params[:id])
    @rsvp.destroy
    redirect_to rsvps_path, notice: 'RSVP Deleted'
  end

  private

    # Only allow a trusted parameter "white list" through.
    def rsvp_params
      params.require(:rsvp).permit(:name, :attending, :number)
    end
end
