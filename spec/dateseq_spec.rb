require 'spec_helper'

describe Dateseq::Generator do
  it 'should have a version number' do
    expect(Dateseq::VERSION).not_to be_nil
  end

  shared_examples_for 'generate date sequence' do
    it 'generate date sequence' do
      seq = generator.sequence(from, to)
      expect(seq).to eq expected
    end
  end

  shared_examples_for 'generate date sequence_str' do
    it 'generate date sequence_str' do
      seq = generator.sequence_str(from, to)
      expect(seq).to eq expected
    end
  end

  let(:generator) { described_class.new(options) }

  describe '#sequence' do
    context '20131230 to 20140101' do
      let(:from) { '20131230' }
      let(:to) { '20140101' }
      let(:options) { { format: '%Y%m%d' } }
      let(:expected) { %w(20131230 20131231 20140101) }
      it_behaves_like 'generate date sequence'
    end

    context '2013-12-30 to 2014-01-21 with increments 7' do
      let(:from) { '2013-12-30' }
      let(:to) { '2014-01-21' }
      let(:options) { { format: '%Y-%m-%d', increments: 7 } }
      let(:expected) { %w(2013-12-30 2014-01-06 2014-01-13 2014-01-20) }
      it_behaves_like 'generate date sequence'
    end
  end

  describe '#sequence_str' do
    context '20131230 to 20140101' do
      let(:from) { '20131230' }
      let(:to) { '20140101' }
      let(:options) { { format: '%Y%m%d' } }
      let(:expected) { "20131230\n20131231\n20140101" }
      it_behaves_like 'generate date sequence_str'
    end

    context '2013/12/30 to 2014/01/01' do
      let(:from) { '2013/12/30' }
      let(:to) { '2014/01/01' }
      let(:options) { { format: '%Y/%m/%d', sep: "\t" } }
      let(:expected) { "2013/12/30\t2013/12/31\t2014/01/01" }
      it_behaves_like 'generate date sequence_str'
    end
  end
end
