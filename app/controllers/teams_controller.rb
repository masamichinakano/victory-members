class TeamsController < ApplicationController
  before_action :move_to_new_user_session, except: [:index]    

  def index
    @users = User.all
    # @members = Member.all
    # @defenses = Defence.all
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

  def team
    @users  = User.all
  end

  def show
    @users  = User.all

    # @member = Member.find(params[:id])
  end

  def edit
    @users = User.find(params[:id])
    
  end

  def update
    # binding.pry
    @users = User.find(params[:id])
    if @user.update(user_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to root_path
    else
      render 'show'
    end


  end

  private
  def member_params
    params.require(:user).permit(:name, :director, :email, :encrypted_password, :group, :tell)
  end

  def move_to_new_user_session
    redirect_to new_user_session_path unless user_signed_in?   
  end

end
