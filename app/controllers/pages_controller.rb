class PagesController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :test_before
  after_action :test_after
    def home
      render html: "<h1> Honey I am home</h1>".html_safe
    end

    def data
      p params
      redirect_to root_path

    end

    def test_before
      puts "before ran"
    end

    def test_after
      puts "after ran"
    end
end      
     