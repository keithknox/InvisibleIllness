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
    @person = Person.find(params[:id])
    if @person.user_submitted
      @three_people = Person.where(user_submitted:true).sample(3)
    else
      @three_people = Person.where(user_submitted:false).sample(3)
    end

  end

  def new
    @person = Person.new
    @illnesses = Illness.all
  end

  def create
    @person = Person.new(person_params)
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
