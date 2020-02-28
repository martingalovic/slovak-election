class StaticPagesController < ApplicationController
  def index
    @parties = Party.select(:party_number, :name, :percentage, :votes)
  end

  def parties
  end

  def subjects
  end

  def subject_redirect
    @subject = Subject.find(params[:id])
    search_term = "#{@subject.full_name} wikipedia"
    redirect_to "https://duckduckgo.com/?q=\\#{CGI.escape(search_term)}"
  end
end
