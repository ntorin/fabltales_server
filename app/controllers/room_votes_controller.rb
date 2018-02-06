class RoomVotesController < ApplicationController
  before_action :set_room_vote, only: [:show, :update, :destroy]

  # GET /room_votes
  def index
    @room_votes = RoomVote.all

    render json: @room_votes
  end

  # GET /room_votes/1
  def show
    render json: @room_vote
  end

  # POST /room_votes
  def create
    @room_vote = RoomVote.new(room_vote_params)

    if @room_vote.save
      render json: @room_vote, status: :created, location: @room_vote
    else
      render json: @room_vote.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /room_votes/1
  def update
    if @room_vote.update(room_vote_params)
      render json: @room_vote
    else
      render json: @room_vote.errors, status: :unprocessable_entity
    end
  end

  # DELETE /room_votes/1
  def destroy
    @room_vote.destroy
  end

  def emit_vote
    ActionCable.server.broadcast("room_#{params[:room_id]}", {vote_type: params[:vote_type], action: 'room_vote_emit_vote'})
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room_vote
      @room_vote = RoomVote.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def room_vote_params
      params.require(:room_vote).permit(:user_id, :room_id, :room_user_id, :vote_type, :has_agreed)
    end
end
