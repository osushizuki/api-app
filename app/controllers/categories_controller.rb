class CategoriesController < ApplicationController

  def index
  end

  def create
    category = Category.new(category_params)
    if category.save
      render json: user, status: :created
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  private

  def category_params
    params.permit(:name)
  end

end
