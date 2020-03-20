class CourtsController < ApplicationController
  before_action :set_court, only: [:show, :edit, :update, :destroy]

  def index         # GET /courts
    if params[:query].present?
    sql_query = "name ILIKE :query OR address ILIKE :query"
    @courts = policy_scope(Court).where(sql_query, query: "%#{params[:query]}%")
    else
      @courts = policy_scope(Court).all
    end
  end

  def show          # GET /courts/:id
  end

  def new           # GET /courts/new
    @court = Court.new
    authorize @court
  end

  def create        # POST /courts
    @court = Court.new(court_params.merge(user_id: current_user.id))
    authorize @court

    if @court.save
      redirect_to courts_path
    else
      render :new
    end
  end

  # def edit          # GET /courts/:id/edit
  # end

  # def update        # PATCH /courts/:id
  # end

  # def destroy       # DELETE /courts/:id
  # end

  private

  def court_params
    params.require(:court).permit(:name, :description, :address, :court_type, :capacity)
  end

  def set_court
    @court = Court.find(params[:id])
    authorize @court
  end
end
