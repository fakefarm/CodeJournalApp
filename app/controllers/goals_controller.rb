class GoalsController < ApplicationController

  def index
    @goals = current_user.goals
  end

  def new
    @goal = Goal.new
  end

  def create
    @goal = current_user.goals.build(params[:goal])

    redirect_to '/goals' if @goal.save
  end

  def edit
    @goal = Goal.find(params[:id])
  end

  def show
    @goal = Goal.find(params[:id])
  end

  def update
    @goal = Goal.find(params[:id])
    if @goal.update_attributes(params[:goal])
     redirect_to @goal, notice: "Goal was successfully updated."
    else
      render action: "edit"
    end
  end


  def destroy
    @goal = Goal.find(params[:id])
    @goal.destroy
    redirect_to '/goals'
  end


end