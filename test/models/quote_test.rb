require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
  test "unique_tag" do
    quote = Quote.create(:author => 'Ken Ho', :saying => 'Jumping jack for 2 mins')
    expected = "KH\##{quote.id}"
    actual = quote.unique_tag
    assert_equal expected, actual
  end
end
