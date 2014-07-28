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

  describe "when searching for a book that does not exist" do
    let!(:nil_googlebooks_response){ {} }

    it "does not blow up when author is nil" do
      expect{ GoogleBooksAdapter.new(nil_googlebooks_response).author }.to_not raise_error
    end

    it "does not blow up when title is nil" do
      expect{ GoogleBooksAdapter.new(nil_googlebooks_response).title }.to_not raise_error
    end
  end
end
