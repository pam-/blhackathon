class MembersController < ApplicationController
  def new
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)
    if @member.save
      flash[:success] = "Got it!"
      respond_to do |format|
        format.html { redirect_to new_member_path }
      end
    else
      flash[:error] = "Whoops! Something went wrong..."
      respond_to do |format|
        format.html { redirect_to new_member_path }
      end
    end
  end

  def member_params
    params.require(:member).permit(:name, :twitter, :email, :description)
  end
end