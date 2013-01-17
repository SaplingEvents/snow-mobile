class SpeakersController < ApplicationController
  def index
    @speakers = Speaker.order("Name ASC")
  end
end
