require 'spec_helper'

describe "StaticPages" do
  
  describe "Home page" do
    it "should have the content 'Connectify'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text=> 'Home')
    end
    
    it "should  have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text=> 'Connectify | Home')
    end      
  end
  
  describe "About page" do
    it "should have the content 'About" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text=> 'About')
    end
    
    it "should have the title 'About'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text=> 'Connectify | About')
    end
  end
end