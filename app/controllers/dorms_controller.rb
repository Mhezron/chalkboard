class DormsController < ApplicationController
  before_action :set_dorm, only: [:edit, :update, :show, :destroy]
  def index
    @dorms = Dorm.all
  end

  def new
    @dorm = Dorm.new
  end

  def create
    @dorm = Dorm.new(dorm_params)
    if @dorm.save
      redirect_to dorms_path, notice: "Dormitory Created successfully"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @dorm.update(dorm_params)
      redirect_to dorms_path, notice: "Dormitory Edited successfully"
    else
        render :edit, status: :unprocessable_entity
    end
  end

  def show
  end

  def destroy
    @dorm.destroy
    redirect_to dorms_path
  end

  private

  def set_dorm
    @dorm = Dorm.find(params[:id])
  rescue ActiveRecord::RecordNotFound
      redirect_to dorms_url, alert: "Dorm not found"
  end

  def dorm_params
    params.require(:dorm).permit(:dorm_name, :dorm_code)
  end
end
