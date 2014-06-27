require 'ostruct'


class GoogleBooksAdapter
  NOT_FOUND_AUTHOR = "UNFINDABLE AUTHOR"
  NOT_FOUND_TITLE = "(count not find title)"

  def initialize(title)
    @title = title
  end

  def search
    GoogleBooks.search(@title).first || OpenStruct.new( title: NOT_FOUND_TITLE, author: NOT_FOUND_AUTHOR )
  end
end
