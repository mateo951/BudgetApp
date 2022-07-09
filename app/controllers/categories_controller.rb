class CategoriesController < ApplicationController
  load_and_authorize_resource

  def index
    @recipes = Category.all.where(user: current_user)
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    @category.author_id = current_user.id
    respond_to do |format|
      if @category.save
        format.html { redirect_to category_url(@category), notice: 'Category was successfully created.' }
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @category.destroy

    respond_to do |format|
      format.html { redirect_to categories_url, notice: 'Category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name, :icon)
  end
end
