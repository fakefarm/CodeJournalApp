require 'spec_helper'

describe QuestionsController do
  before :all do
    session = Capybara::Session.new(:webkit, CodeJournalApp)
    @user = User.create
    @user.projects.create :name => "BMX"
    session[:user_id] = @user.id
  end

  context '.new' do

    it 'answers new form' do
      visit new_question_path
      fill_in "Question", :with => "good to go"
      fill_in "question_topic", :with => "12345"
      select "BMX", :from => "question_project_id"
      click_on "Post Question"
    end
  end

  context '.create' do
  end
end
