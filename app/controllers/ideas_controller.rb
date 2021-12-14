class IdeasController < ApplicationController
  before_action :set_idea, only: [:show]

  def index
    ideas = Idea.all
    render json: { data: ideas }
  end

  def create
    idea = Idea.new(idea_params)
  end

  private

  def set_idea
    @idea = Idea.find(params[:category_id])
  end

  def idea_params
    params.permit(:body,:category_id)
  end

end
