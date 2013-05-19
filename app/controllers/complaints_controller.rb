class ComplaintsController < ApplicationController
  before_filter :is_admin?, :except => [:new, :create]

  def index
    @complaints = Complaint.order("created_at DESC")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @complaints }
    end
  end

  def show
    @complaint = Complaint.find(params[:id])
  end

  def new
    @complaint = Complaint.new
  end

  def create
    @complaint = current_user.complaints.create(params[:complaint])

    respond_to do |format|
      if @complaint.save
        format.html { redirect_to root_url, notice: 'Complaint successfully sent.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def destroy
    @complaint = Complaint.find(params[:id])
    @complaint.destroy
  end
end
