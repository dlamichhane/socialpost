require 'spec_helper'

describe "StaticPages" do
  describe "GET /home" do
    # it "works! (now write some real specs)" do
    #   # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    #   get static_pages_index_path
    #   response.status.should be(200)
    # end

    it "should have the content 'SocialPost'" do
    	visit static_pages_home_path
    	expect(page).to have_content('Home')
    end
  end

  describe "GET /about_us" do 
  	it "should have the content 'About us'" do
    	visit static_pages_about_us_path
    	expect(page).to have_content('About us')
    end

    it "should have the title 'About us'" do
    	visit static_pages_about_us_path
    	expect(page).to have_title('About us')
    end
  end
end
