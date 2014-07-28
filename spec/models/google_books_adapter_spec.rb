require 'spec_helper'

describe GoogleBooksAdapter do
  describe "when searching for a book that exists" do
    let!(:googlebooks_response){ {title: "Either / Or", authors: [ "Soren Kierkergaard" ]} }

    it "finds the author" do
      expect(GoogleBooksAdapter.new(googlebooks_response).author).to eql "Soren Kierkergaard"
    end

    it "finds the title" do
      expect(GoogleBooksAdapter.new(googlebooks_response).title).to eql "Either / Or"
    end
  end
end
