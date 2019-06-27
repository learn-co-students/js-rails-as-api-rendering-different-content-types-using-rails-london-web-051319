class BirdsController < ApplicationController

  # def index
  #   @birds = Bird.all
  #   render 'birds/index.html.erb'
  # end

  def index
    @birds = Bird.all # instance variables are no longer required for json.
    render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }
  end
  end
