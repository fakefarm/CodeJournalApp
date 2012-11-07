require 'spec_helper'

describe "New Question" do
  it "allows me to create a question" do

    login_with_oauth

    Project.create(name: "36shirts")

    visit questions_path

    click_link "New Question"

    fill_in "Question", :with => "My Question"

    # save_and_open_page

    select '36shirts', :from => 'project'

    click_button "Submit Question"

  end
end