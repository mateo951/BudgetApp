class CategoriesController < ApplicationController
  load_and_authorize_resource

  def index
    @category = Category.all.where(user: current_user)
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    @category.user = current_user
    if @category.valid?
      @category.save
      flash[:notice] = 'Category added'
    else
      flash[:alert] = "#{@category.name} could't be created"
    end
    redirect_to categories_url
  end

  def destroy
    @category.destroy
    flash[:alert] = "#{@category.name} was successfully deleted"
    redirect_to categories_url
  end

  private

  def category_params
    params.require(:category).permit(:user, :name, :icon)
  end
end
