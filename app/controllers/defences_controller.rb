class DefencesController < ApplicationController

  def index
    @defence = Defence.new
    @members = Member.all
  end

  def create
  end




  private
  def defence_params
    params.require(:defence).permit(:pitcher_fielder, :catcher_fielder, :first_fielder, :second_fielder, :third_fielder, :short_fielder, :left_fielder, :center_fielder, :right_fielder).merge(member_id: @member.id)
  end

end
