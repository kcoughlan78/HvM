class UsersController < ApplicationController
  before_filter :is_admin?, :except => [:new, :show, :create, :update, :edit]

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        # Tell the UserMailer to send a welcome Email after save
        UserMailer.reg_email(@user).deliver

        format.html { redirect_to(root_url, :notice => 'User was successfully created.') }
        #format.json { render :json => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.json { render :json => @user.errors, :status => :unprocessable_entity }
      end
    end
  end


  def index
    @users = User.order("email")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  def show
    #@user = current_user
    @user = !params[:id].nil? ? User.find(params[:id]) : current_user
    @uploader = User.new.image
    @uploader.success_action_redirect = editmyaccount_path
  end

  def edit
    @user = !params[:id].nil? ? User.find(params[:id]) : current_user
    #@user = User.edit(key: params[:key])
  end

  def update
    @user = !params[:id].nil? ? User.find(params[:id]) : current_user
    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'Successfully updated profile' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @users.errors, status: :unprocessable_entity }
      end
    end
  end

  def myposts
    render :_layout => 'users/myposts'
  end

  def destroy
    @user = User.delete(params[:id])
    redirect_to users_url
  end

end
