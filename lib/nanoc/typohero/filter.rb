# encoding: utf-8

require 'typohero'

module Nanoc
  module TypoHero
    class Filter < Nanoc::Filter
      identifier :typohero

      def run(content, _params = {})
        ::TypoHero.enhance(content)
      end
    end
  end
end
