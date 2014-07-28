class GoogleBooksAdapter
  def initialize(raw_response)
    @raw_response = raw_response
  end

  def title
    @raw_response[:title]
  end

  def author
    @raw_response[:authors].first
  end
end
