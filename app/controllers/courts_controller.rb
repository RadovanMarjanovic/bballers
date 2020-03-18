class CourtsController < ApplicationController
  def index         # GET /courts
    @courts = Court.all
  end

  def show          # GET /courts/:id
    @court = Court.find(params[:id])
  end

  # def new           # GET /courts/new

  # end

  # def create        # POST /courts
  # end

  # def edit          # GET /courts/:id/edit
  # end

  # def update        # PATCH /courts/:id
  # end

  # def destroy       # DELETE /courts/:id
  # end
end
