class TitlesController < ApplicationController
  def index
    @titles=Comic.all.order(title: :asc)
    if params[:conclusion].present?
      if params[:conclusion]=='true'
        @titles=@titles.where(conclusion:true)
      elsif params[:conclusion]=='false'
        @titles=@titles.where(conclusion:false)
      end
    end
  end
end
