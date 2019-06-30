class BirdsController < ApplicationController
  def index
    @birds = Bird.all
    render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'], plain: "Get out of here #{@birds.name}" }.to_json
  end
end
