require "rails_helper"

describe "creating new user" do
  
  it "does rspec works?" do
    visit new_user_registration_path
    expect(page).to have_content "Sign up"
    expect(page).to have_content "8 characters minimum"
  click_button "Sign up"
   expect(page).to have_content "can't be blank"
  end

  it "does sign up works", js: true do
    visit new_user_registration_path
    fill_in('Email', :with => 'John@john.pl')
    fill_in('Name', :with => 'John')
    
    fill_in('Password', :with => 'Seekrit1', :match => :prefer_exact)
   
    fill_in('Password confirmation', :with => 'Seekrit1', :match => :prefer_exact)
    click_button "Sign up"
    expect(page).to have_content "You have signed up successfully."

  end
    
  it "checks jquery" do
    visit new_user_session_path
    fill_in('Email', :with => 'John@john.pl')
    
    
    fill_in('Password', :with => 'Seekrit1', :match => :prefer_exact)
   
    
    click_button "Log in"
    expect(page).to have_content "successfully"
    click_button "add to shelf"
    wait_for_ajax
    expect(page).to have_css('.disabled')


  end


end