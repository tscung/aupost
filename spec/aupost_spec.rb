require 'spec_helper'

describe Aupost do
  it 'has a version number' do
    expect(Aupost::VERSION).not_to be nil
  end

  it 'need an Aupost key to start with' do
  	expect(Aupost::key).not_to be nil
  end

end
