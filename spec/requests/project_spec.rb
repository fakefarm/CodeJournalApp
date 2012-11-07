require "spec_helper"

# describe ProjectsController do
#   context ".index" do
#     it "should render a table"
#     it ""
#   end
# end


describe "Project Flows" do
  it "allows me to create a project" do



    login_with_oauth

    visit projects_path

    click_link "New Project"

    fill_in "Name", :with => "My Project"

    click_button "Create Project Journal"






    page.should have_content "My Project"
  end
end