class HangMenController < ApplicationController
  # GET /hang_men
  # GET /hang_men.json
  def index

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hang_men }
    end
  end
end