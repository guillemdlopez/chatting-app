class PagesController < ApplicationController
  def chatrooms
    if params[:chatroom].present?
      @chatrooms = Chatroom.search(params[:chatroom])
      @num_results = @chatrooms.count
      if @num_results.zero?
        @results_message = 'No results found :('
      else
        @results_message = "#{@num_results} #{'result'.pluralize(@num_results)} found! :)"
      end
    else
      @chatrooms = Chatroom.all
    end
    @CATEGORIES = Chatroom::CATEGORIES
  end
end
