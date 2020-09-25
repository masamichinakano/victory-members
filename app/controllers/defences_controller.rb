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




  private
  def defence_params
    params.require(:defence).permit(:pitcher, :catcher, :first, :second, :third, :short, :left, :center, :right).merge(user_id: current_user.id)
  end

end
