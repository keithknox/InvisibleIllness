require 'spec_helper'

describe PeopleController do

  describe "GET #index" do
    it "populates an array of people" do
      Person.destroy_all
      person = FactoryGirl.create(:person)
      get :index
      assigns(:people).should eq([person])
    end
    it "renders the :index view" do
      get :index
      response.should render_template :index
    end
  end

  describe "GET #show" do
    it "assigns the requested person to @person" do
      person = FactoryGirl.create(:person)
      get :show, id: person
      assigns(:person).should eq (person)
    end
    it "renders the :show template" do
      get :show, id: FactoryGirl.create(:person)
      response.should render_template :show
    end
  end

  describe "GET #new" do
    it "renders the :new template" do
      get :new
      response.should render_template :new
    end
  end

  describe "POST #create" do
    context "with valid attributes" do
      it "saves the new person in the database" do
        expect {
          post :create, person: FactoryGirl.attributes_for(:person)
        }.to change(Person,:count).by(1)
      end

      it "redirects to the home page" do
        post :create, person: FactoryGirl.attributes_for(:person)
        response.should render_template :confirmation
      end
    end

    context "with invalid attributes" do
      it "does not save the new person in the database" do
        expect {
          post :create, person: FactoryGirl.attributes_for(:invalid_person)
        }.to_not change(Person,:count)

      end
      it "re-renders the :new template" do
        post :create, person: FactoryGirl.attributes_for(:invalid_person)
        response.should render_template :new

      end

    end
  end
end
