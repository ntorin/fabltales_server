class StoryUsersController < ApplicationController
  before_action :set_story_user, only: [:show, :update, :destroy]

  # GET /story_users
  def index
    @story_users = StoryUser.all

    render json: @story_users
  end

  # GET /story_users/1
  def show
    render json: @story_user
  end

  # POST /story_users
  def create
    @story_user = StoryUser.new(story_user_params)

    if @story_user.save
      render json: @story_user, status: :created, location: @story_user
    else
      render json: @story_user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /story_users/1
  def update
    if @story_user.update(story_user_params)
      render json: @story_user
    else
      render json: @story_user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /story_users/1
  def destroy
    @story_user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_story_user
      @story_user = StoryUser.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def story_user_params
      params.require(:story_user).permit(:story_id, :user_id)
    end
end
