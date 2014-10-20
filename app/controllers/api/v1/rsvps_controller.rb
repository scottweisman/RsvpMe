class Api::V1::RsvpsController < ApplicationController
  respond_to :json

  def index
    respond_with Rsvp.all, root: false
  end

  def show
    respond_with rsvp
  end

  def create
    respond_with :api, :v1, Rsvp.create(rsvp_param)
  end

  def update
    respond_with rsvp.update(rsvp_params)
  end

  def destroy
    respond_with rsvp.destroy
  end

  private

    def rsvp
      Rsvp.find(params[:id])
    end

    def rsvp_params
      params.require(:rsvp).permit(:name, :attending, :number)
    end
end