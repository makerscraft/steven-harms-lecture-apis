require 'spec_helper'

describe GoogleBooksAdapter do

  context "when asking about an extant book: The Great Gatsby" do
    let(:search_result) { GoogleBooksAdapter.new("The Great Gatsby").search }
    before(:each) do
      allow_any_instance_of(GoogleBooksAdapter).to receive(:search).and_return(OpenStruct.new( title: "The Great Gatsby: ", author: "F. Scott Fitzgerald" ))
    end

    it "returns a book title result for #search" do
      expect(search_result.title).to eq "The Great Gatsby: "
    end

    it "returns a book author result for #search" do
      expect(search_result.author).to eq "F. Scott Fitzgerald"
    end
  end

  context "when asking about a book that doesn't exist" do
    let(:imaginary_book_result) { GoogleBooksAdapter.new("Fjjjjajjasdkfsjdfeepy").search }
    before(:each) do
      allow_any_instance_of(GoogleBooksAdapter).to receive(:search).and_return(OpenStruct.new( title: GoogleBooksAdapter::NOT_FOUND_TITLE, author: GoogleBooksAdapter::NOT_FOUND_AUTHOR))
    end

    it "returns an empty book title result for #search" do
      expect(imaginary_book_result.title).to eq GoogleBooksAdapter::NOT_FOUND_TITLE
    end

    it "returns an empty book title result for #search" do
      expect(imaginary_book_result.author).to eq GoogleBooksAdapter::NOT_FOUND_AUTHOR
    end
  end
end
