class BooksController < ApplicationController
  def take_a_look
  end

  def enter_a_book
    book_result = GoogleBooks.search(params[:title]).first
    @title = book_result.title
    @author = book_result.authors
  end

  def reading_rainbow
  end
end
