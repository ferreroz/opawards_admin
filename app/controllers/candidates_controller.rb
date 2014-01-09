class CandidatesController < ApplicationController
  
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
  
end
