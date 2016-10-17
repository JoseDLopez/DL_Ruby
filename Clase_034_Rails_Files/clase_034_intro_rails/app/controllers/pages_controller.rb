class PagesController < ApplicationController
  before_action :set_variables
  def index
  end

  def help
  end

  def about
  end

  def contact
  end

  def nueva
  end

  private
  def set_variables
    @variable = 6
  end
end
