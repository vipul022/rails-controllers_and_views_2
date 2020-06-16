class PokemonController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :test_before
  after_action :test_after
    def show
        puts params
        # render json: {name: params[:name]}
        render json: {name: params[:name], type: "fire", level: 40}
        # render plain: "It Worked"
       
    end

    def test_before
      puts "before ran"
    end

    def test_after
      puts "after ran"
    end


end