require 'dateseq/version'
require 'date'

# Date Sequence
module Dateseq
  # Date Sequence generator
  class Generator
    def initialize(options)
      @format = options[:format] || '%Y%m%d'
    end

    def sequence(from_date, to_date)
      from = Date.strptime(from_date, @format)
      to = Date.strptime(to_date, @format)
      seq = []
      from.upto(to).each do |date|
        seq << date.strftime(@format)
      end
      seq
    end
  end
end
