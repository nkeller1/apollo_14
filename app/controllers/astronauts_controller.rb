class AstronautsController < ApplicationController

  def index
    @astros = Astronaut.all
  end

end
