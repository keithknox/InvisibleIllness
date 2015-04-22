class PeopleController < ApplicationController

  def index
    @people = Person.all
  end

  def show
    @people = Person.all
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
    @illnesses = Illness.all
  end

  def create
    @person = Person.new(person_params)

    if @person.save
      binding.pry
      redirect_to @person
    else
      render :new
    end
  end

  def edit
    @person = Person.find(params[:id])
    @illnesses = Illness.all
  end

  def update
    @person = Person.find(params[:id])
    @person.update!(person_params)
    redirect_to(@person)
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy
    redirect_to people_path
  end

  private

  def person_params
    return params[:person].permit(:name, :image_url, :video_url, :illness_id, :story)
  end

end
