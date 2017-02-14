class HomePagesController < ApplicationController
  def menu
    @sections = Section.all
  end

  def contact_us
  end
end
