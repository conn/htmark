#!/usr/bin/env ruby

module HTMark
  module Template
    class << self
      def contents(file = 'template.html')
        ::File.read ::File.join ::File.dirname(__FILE__), file
      end

      def filled(url, title = 'HTMark')
        contents % { url: url, title: title }
      end
    end
  end
end
