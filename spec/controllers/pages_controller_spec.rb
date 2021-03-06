require 'spec_helper'

describe PagesController do
	render_views
	
 before(:each) do
   @base_title = "Ruby on Rails Turoial Sample App"
  end

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end
  
	it "should have the right title Home" do
		get 'home'
		response.should have_selector("title",
									  :content => "#{@base_title} | Home")
	end
	
	it "should have a non-blanck body" do
		get 'home'
		respons.body.should_not -~ /<body>\s*<\/body>/
	end
	
	
	it "should have the right title About" do
		get 'about'
		response.should have_selector("title",
									  :content => "#{@base_title} | About")
	end
	
	
	it "should have the right title Contact" do
			get 'contact'
			response.should have_selector("title",
										  :content => "#{@base_title} | Contact")
	end
		

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
  end
  
    describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end
  end
 end

