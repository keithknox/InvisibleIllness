class PeopleController < ApplicationController

  def index
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    person = Person.find(params[:id])
    @illness = person.illness
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)

    if @person.save
      redirect_to @person
    else
      render :new
    end
  end

  def person_params
    params.require(:person).permit(:name, :image_url, :video_url, :illness, :story)
  end

end
