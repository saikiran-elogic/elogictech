class CasestudiesController < ApplicationController
  # GET /casestudies
  # GET /casestudies.json
  
  def index
    @casestudies = Casestudy.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @casestudies }
    end
  end

  # GET /casestudies/1
  # GET /casestudies/1.json
  def show
    @casestudy = Casestudy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @casestudy }
    end
  end





end
