require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
  test "unique_tag" do
    quote = FactoryGirl.create(:quote, :author => "Ken Ho")
    expected = "KH\##{quote.id}"
    actual = quote.unique_tag
    assert_equal expected, actual
  end
end
