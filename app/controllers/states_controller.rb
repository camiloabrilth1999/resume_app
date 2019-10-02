class StatesController < ApplicationController
  def show_list
    @states = State.all
  end
end
