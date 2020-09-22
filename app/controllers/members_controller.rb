class MembersController < ApplicationController
  
  def index
    @members = Member.all
  end

  def new
    @member = Member.new
  end

  def create
    # binding.pry
    @member = Member.new(member_params)
    if @member.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def player
    @members = Member.all
  end

  def show
    @member = Member.find(params[:id])
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    # binding.pry
    @member = Member.find(params[:id])
    if @member.update(member_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @member = Member.find(params[:id])
    if @member.destroy
      redirect_to root_path
    else
      render 'show'
    end


  end

  private
  def member_params
    params.require(:member).permit(:image, :name, :school_year_id, :age, :tall, :weight,:throwing_id, :hitting_id, :first_position_id, :second_position_id, :third_position_id, :number).merge(user_id: current_user.id)
  end


end
