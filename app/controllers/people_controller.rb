class PeopleController < ApplicationController
#current_user
  before_action :authenticate_user!, except: [:new, :create, :index, :show]

  def index
    @people = Person.where(user_submitted:false)
  end

  def user_submitted
    @people = Person.where(user_submitted:true)
  end

  def show
    @three_people = Person.all.sample(3)
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
    @illnesses = Illness.all
  end

  def create
    @person = Person.new(person_params)
    binding.pry
    if @person.save
      render :confirmation
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
    redirect_to '/admin'
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy
    redirect_to '/admin'
  end

  def admin
    @people = Person.all
  end



  private

  def person_params
    return params[:person].permit(:name, :image_url, :video_url, :illness_id, :story, :user_submitted)
  end

end
