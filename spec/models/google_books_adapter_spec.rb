require 'spec_helper'

describe GoogleBooksAdapter do
  describe "when searching for a book that exists" do
    let!(:googlebooks_response){ {title: "Either / Or", authors: [ "Soren Kierkergaard" ]} }

    it "finds the author"
    it "finds the title"
  end
end
