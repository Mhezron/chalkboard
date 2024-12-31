class StreamsController < ApplicationController
  before_action :set_stream, only: [:edit, :update, :destroy, :show]

  def index
    @streams = Stream.all
  end

  def new
    @stream = Stream.new
  end

  def create
    @stream = Stream.new(stream_params)
    if @stream.save
      redirect_to streams_path, notice: "Stream created successfully."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    # @stream is already set by before_action :set_stream
  end

  def update
    if @stream.update(stream_params)
      redirect_to streams_path, notice: "Stream was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def show
    # @stream is already set by before_action :set_stream
  end

  def destroy
    @stream.destroy
    redirect_to streams_path
  end

  private

  def set_stream
    @stream = Stream.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to streams_url, alert: "Stream not found."
  end

  def stream_params
    params.require(:stream).permit(:stream_name, :stream_code)
  end
end
