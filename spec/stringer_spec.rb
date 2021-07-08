# frozen_string_literal: true
require 'spec_helper'
RSpec.describe Stringer do
  it "concatenates undefined number of string with a space" do
    expect(Stringer.spacify "Oscar", "Vasquez", "Zweig", "Olasaba", "Hernandez", "Ricardo", "Mendoza").to eq("Oscar Vasquez Zweig Olasaba Hernandez Ricardo Mendoza")
  end
  it "if the given string has a greater length than the max length parameter, should shorten it to the max length and add a '...' to the end. Else if the string length is shorter than or equal to the max length, should return the string itself." do
    expect(Stringer.minify("Hello, I'm learning how to create a gem", 10)).to eq("Hello, I'm...")
    expect(Stringer.minify("Hello", 10)).to eq("Hello")
  end
  it "iterates over a string and replaces each instance of that word with the replacement provided" do
    expect(Stringer.replacify("I can't do this", "can't", "can")).to eq("I can do this")
  end
  it "iterates over a string and adds each word into an array, then returns that array" do
    expect(Stringer.tokenize("I love to code")).to eq(["I", "love", "to", "code"])
  end
  it "remove a specific string within the original string" do
    expect(Stringer.removify("I'm not a developer", "not")).to eq("I'm a developer")
  end
end
