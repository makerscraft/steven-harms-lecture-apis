class BooksController < ApplicationController
  def take_a_look
  end

  def enter_a_book
    book_result = GoogleBooksAdapter.new(params[:title]).search
    @title = book_result.title
    @author = book_result.author
  end

  def reading_rainbow
  end
end
