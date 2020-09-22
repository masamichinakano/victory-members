class DefencesController < ApplicationController

  def index
    @defence = Defence.new
    @members = Member.all
    # @member = Member.find(params[:id])
  end

  def create
    binding.pry
    @defence = Defence.new(defence_params)
    if @defence.save
      redirect_to root_path
    else
      render 'index'
    end
  end




  private
  def defence_params
    params.require(:defence).permit(:pitcher_fielder, :catcher_fielder, :first_fielder, :second_fielder, :third_fielder, :short_fielder, :left_fielder, :center_fielder, :right_fielder).merge(member_id: @member.id)
  end

end
