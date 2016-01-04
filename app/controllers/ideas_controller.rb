class IdeasController < ApplicationController
  def new
    @idea = Idea.new
  end

  def create
    @idea = Idea.new(idea_params)
    if @idea.save
      flash[:success] = "Got it!"
      respond_to do |format|
        format.html { render 'new' }
      end
    else
      flash[:error] = "Got it! NOT!!"
      respond_to do |format|
        format.html { render 'new' }
      end
    end
  end

  def idea_params
    params.require(:idea).permit(:name, :twitter, :email, :description)
  end
end