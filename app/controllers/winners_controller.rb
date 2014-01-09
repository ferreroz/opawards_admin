class WinnersController < ApplicationController
  def show
    @winner = Winner.find(params[:id])
  end
  
  def index
    @winners = Winner.find(:all, :order=>'updated_at DESC')
  end
  
  def create
    Winner.create(winner_params)
  end
  
  private
  def winner_params
    params.require(:winner).permit(:candidate_id, :publish_date, :judge, :comment)
#    redirect_to
  end
  
end
