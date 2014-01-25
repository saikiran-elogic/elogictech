class CareersController < ApplicationController

   # GET /careers
  # GET /careers.json
  
  def index
    @careers = Career.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @careers }
    end
  end

  # GET /careers/1
  # GET /careers/1.json
  def show
    @career = Career.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @career }
    end
  end


end
