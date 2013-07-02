require 'spec_helper'

describe "StaticPages" do
  describe "GET /home" do
   before { visit root_path }

    it "should have the content 'Home'" do
    	expect(page).to have_content('Home')
    end

    it "should have the base title" do
      expect(page).to have_title("SocialPost - Home")
    end

    it "should not have the base title" do
      expect(page).not_to have_title(" -- Home")
    end
  end

  describe "GET /about_us" do 
    before { visit about_us_path }
  	it "should have the content 'About us'" do
    	expect(page).to have_content('About us')
    end

    it "should have the base title 'About us'" do
    	expect(page).to have_title(full_title('About us'))
    end

    it "should have the base title" do
      expect(page).to have_title(full_title(''))
    end

    it "should not have the base title" do 
      expect(page).not_to have_title(full_title('-- About us'))
    end
  end
end
