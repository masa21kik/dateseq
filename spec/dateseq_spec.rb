require 'spec_helper'

describe Dateseq do
  it 'should have a version number' do
    expect(Dateseq::VERSION).not_to be_nil
  end

  shared_examples_for 'generate date sequence' do
    it 'generate date sequence' do
      seq = generator.sequence(from, to)
      expect(seq).to eq expected
    end
  end

  let(:generator) { Dateseq::Generator.new(options) }

  context '20131230 to 20140101' do
    let(:from) { '20131230' }
    let(:to) { '20140101' }
    let(:options) { { format: '%Y%m%d' } }
    let(:expected) { %w(20131230 20131231 20140101) }
    it_behaves_like 'generate date sequence'
  end

  context '2013-12-30 to 2014-01-01' do
    let(:from) { '2013-12-30' }
    let(:to) { '2014-01-01' }
    let(:options) { { format: '%Y-%m-%d' } }
    let(:expected) { %w(2013-12-30 2013-12-31 2014-01-01) }
    it_behaves_like 'generate date sequence'
  end
end
