class BooksController < ApplicationController
  def take_a_look
  end

  def enter_a_book
    book = GoogleBooks.search(params[:title]).first
    @title = book.title
    @author = book.authors
  end

  def reading_rainbow
  end
end
