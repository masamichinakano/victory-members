class DefencesController < ApplicationController

  def index
    @defence = Defence.new
    @members = Member.all
    # @positions = Member.where(pitcher_position: )
    # pitcher_positions = @members.pitcher_position
    # @member = Member.find(params[:id])
  end

  def create
    # binding.pry

    @defence = Defence.new(defence_params)
    if @defence.save
      redirect_to root_path
    else
      render 'index'
    end
  end

  def edit
    @defence = Defence.find(params[:id])
  end

  def show
    @defence = Defence.all
  end



  private
  def defence_params
    params.require(:defence).permit(:pitcher_id, :catcher_id, :first_id, :second_id, :third_id, :short_id, :left_id, :center_id, :right_id).merge(user_id: current_user.id)
  end

end
