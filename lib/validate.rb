#!/usr/bin/env ruby

require 'uri'

module HTMark
  module Validate
    class << self
      def present(url)
        abort 'Missing URL' unless url
      end

      def invalid(url)
        abort "Invalid URL: #{url}"
      end

      def validated(url)
        if ::URI.parse(url).is_a?(::URI::HTTP)
          url
        else
          invalid url
        end
      rescue ::URI::InvalidURIError
        invalid url
      end

      def acceptable(url)
        present url
        validated url
      end
    end
  end
end

