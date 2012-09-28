require 'spec_helper'

describe "Home Page" do
  it "renders when you visit the root of the site" do
    visit root_path
    page.should have_content("Learning to code?")
  end
end