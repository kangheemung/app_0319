class MicropostsController < ApplicationController
  include SessionsHelper
  def index
    @microposts = Micropost.all
  end

  def new
    @micropost=Micropost.new
  end

  def show
    @micropost=Micropost.find_by(id: params[:user_id])
  end
  def create
    @micropost = current_user.microposts.build(micropost_params)
    #p "==========create"
    #p  params
    @micropost.save!
    #p "==========create_saved"
      #p  params
     #p"============"
      #p @user.errors.full_messages
      #p"============"
    p params
    redirect_to p_show_path(@micropost.id)
  end
  def update
    @micropost=Micropost.find_by(id: params[:user_id])
    if @micropost.update(micropost_params)
        redirect_to p_show_path(@micropost.id)  
    else
    render:edit
    end
  end

  def edit
   @micropost=Micropost.find_by(id: params[:user_id])
  end
  
  def micropost_params
   params.require(:micropost).permit(:content,:user_id)
  end
end
