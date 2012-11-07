require 'spec_helper'

describe QuestionsController do

  context '.index' do

    before :each do
      @question = Question.create :question => "How are you?"
    end

    it "should list all questions" do
      get :index
      response.should be_success
    end
  end

  context '.new' do
    it 'answers new form' do
      get :new
      response.should be_success
    end
  end

  context '.create' do
  end
end
