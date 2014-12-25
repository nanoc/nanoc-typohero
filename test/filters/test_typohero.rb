# encoding: utf-8

require 'helper'

class Nanoc::TypoHero::FilterTest < Minitest::Test
  NBSP = ' '

  def test_filter
    # Get filter
    filter = ::Nanoc::TypoHero::Filter.new

    # Run filter
    a = '"TypoHero makes HTML look smarter &amp; better, don\'t you think?"'
    b = "<span class=\"dquo\">“</span>TypoHero makes <span class=\"caps\">HTML</span> look smarter <span class=\"amp\">&amp;</span> better, don’t you#{NBSP}think?”"
    result = filter.setup_and_run(a)
    assert_equal(b, result)
  end
end
