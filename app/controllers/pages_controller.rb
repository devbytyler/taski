class PagesController < ApplicationController
  def contact
  end

  def about
  end

  def home
    @projects = Project.all
  end

  def error
  end
end
