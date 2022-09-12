class PagesController < ApplicationController
  def home; end
  def about
  end

  def contact
    @members = %w[nicolas cameron Bjarke adam]

    if params[:member]
      @members = @members.select { |member| member.downcase.start_with?(params[:member].downcase) }
    end
  end
end
