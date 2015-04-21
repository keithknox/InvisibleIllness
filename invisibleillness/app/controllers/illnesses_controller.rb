class IllnessesController < ApplicationController

  def index
    @illnesses = Illness.all
  end

 def show
   @illness = Illness.find(params[:id])
   @people = @illness.people

 end

end
