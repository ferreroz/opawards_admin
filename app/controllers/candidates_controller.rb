class CandidatesController < ApplicationController
  
  before_filter :signed_in_user
  
  def index
    @candidates = Candidate.find(:all, :order =>'created_at DESC')
  end
  
  def show
    @candidate = Candidate.find(params[:id])
  end
  
  def new
    @candidate = Candidate.new
  end
    
  def create
    Candidate.create(candidate_params)
    redirect_to action: 'new'
#    @candidate = Candidate.new(params[:candidate])
#    if @candidate.save
#      flash[:success] = "Upload complete!"
#      redirect_to @candidate
#    else
#      render 'new'
#    end
  end
  
  private 
    def candidate_params
      params.require(:candidate).permit(:title, :description, :image_url, :location, :shooting_date, :equipment, :creator, :phone_number, :email, :exp, :profession)
    end
  
    def signed_in_user
      redirect_to '/signin', notice: "Please sign in." unless signed_in? 
    end
end
