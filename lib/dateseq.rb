require 'dateseq/version'
require 'date'

# Date Sequence
module Dateseq
  # Date Sequence generator
  class Generator
    def initialize(options)
      @format = options[:format] || '%Y%m%d'
      @sep = options[:sep] || "\n"
      @step = options[:step] || 1
    end

    def sequence(from_date, to_date)
      from = Date.parse(from_date)
      to = Date.parse(to_date)
      from.step(to, @step).map do |date|
        date.strftime(@format)
      end
    end

    def sequence_str(from_date, to_date)
      sequence(from_date, to_date).join(@sep)
    end
  end
end
