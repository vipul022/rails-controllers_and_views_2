class PagesController < ApplicationController
  skip_before_action :verify_authenticity_token
    def home
      render html: "<h1> Honey I am home</h1>".html_safe
    end

    def data
      p params
      render plain: params
    end
end      
     