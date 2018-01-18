class RoomMessagesController < ApplicationController
  before_action :set_room_message, only: [:show, :update, :destroy]

  # GET /room_messages
  def index
    @room_messages = RoomMessage.all

    render json: @room_messages
  end

  # GET /room_messages/1
  def show
    render json: @room_message
  end

  # POST /room_messages
  def create
    @room_message = RoomMessage.new(room_message_params)

    if @room_message.save
      render json: @room_message, status: :created, location: @room_message
    else
      render json: @room_message.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /room_messages/1
  def update
    if @room_message.update(room_message_params)
      render json: @room_message
    else
      render json: @room_message.errors, status: :unprocessable_entity
    end
  end

  # DELETE /room_messages/1
  def destroy
    @room_message.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room_message
      @room_message = RoomMessage.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def room_message_params
      params.require(:room_message).permit(:room_id, :user_id, :message)
    end
end
