class PagesController < ApplicationController
  def home
    @categories = %w(indian shushi french spanish)
  end

  def about
  end

  def contact
  end

end
