# encoding: utf-8

require 'kramdown'

module Nanoc::Kramdown

  class Filter < Nanoc::Filter

    identifier :kramdown

    def run(content, params={})
      ::Kramdown::Document.new(content, params).to_html
    end

  end

end
