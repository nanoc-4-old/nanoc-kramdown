# encoding: utf-8

require 'helper'

class Nanoc::Kramdown::FilterTest < Minitest::Test

  def test_filter
    # Create filter
    filter = ::Nanoc::Kramdown::Filter.new

    # Run filter
    result = filter.run("This is _so_ **cool**!")
    assert_equal("<p>This is <em>so</em> <strong>cool</strong>!</p>\n", result)
  end

end
