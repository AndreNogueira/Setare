class HomeController < ApplicationController

  before_filter :authenticate_user!, only: [:reservations]

  def index
  end

  def reservations

  end
end
