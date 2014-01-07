#! /usr/bin/env ruby
require 'spec_helper'

describe Puppet::Type.type(:packagex) do
  before do
    Puppet::Util::Storage.stubs(:store)
  end

  it "should have a :package_settings feature that requires :package_settings_insync?, :package_settings and :package_settings=" do
    Puppet::Type.type(:packagex).provider_feature(:package_settings).methods.should == [:package_settings_insync?, :package_settings, :package_settings=]
  end

  describe "when validating attributes" do
    it "should have a package_settings property" do
      Puppet::Type.type(:packagex).attrtype(:package_settings).should == :property
    end
  end
end
