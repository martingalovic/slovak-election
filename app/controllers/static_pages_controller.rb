class StaticPagesController < ApplicationController
  def index
    @parties = Party.select(:party_number, :name, :percentage, :votes)
  end

  def parties
  end

  def subjects
  end
end
