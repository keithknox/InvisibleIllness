class IllnessesController < ApplicationController

  def index
  end

 def show
   @illness = Illness.find(params[:id])
   @people = @illness.people

 end

end
