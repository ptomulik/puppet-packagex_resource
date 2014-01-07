#! /usr/bin/env ruby
require 'spec_helper'

describe Puppet::Type.type(:packagex) do
  before do
    Puppet::Util::Storage.stubs(:store)
  end

  it "should have a :build_options feature that requires :build_options_insync?, :build_options and :build_options=" do
    Puppet::Type.type(:packagex).provider_feature(:build_options).methods.should == [:build_options_insync?, :build_options, :build_options=]
  end

  describe "when validating attributes" do
    it "should have a build_options property" do
      Puppet::Type.type(:packagex).attrtype(:build_options).should == :property
    end
  end
end
