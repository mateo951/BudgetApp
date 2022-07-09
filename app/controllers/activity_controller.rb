class ActivityController < ApplicationController
  def index
    @category = Category.find(params[:category_id])
    @activities = Activity.where(category_id: params[:category_id], user: current_user).order('created_at DESC')
  end

  def show
    @activity = Activity.find(params[:activity_id])
    @category = Category.find(params[:category_id])
  end

  def new
    @category = Category.find(params[:category_id])
    @activity = Activity.new
  end

  def create
    transaction = Activity.new(activity_params)
    transaction.category_id = params[:category_id]
    transaction.user = current_user
    if transaction.valid?
      transaction.save
      flash[:notice] = "New transaction created successfully"
    else
      flash[:alert] = "Transaction could't be created"
    end
    redirect_to categories_url
  end

  def activity_params
    params.require(:activity).permit(:name, :amount)
  end
end
