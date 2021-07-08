# frozen_string_literal: true
require_relative "stringer/version"

module Stringer
  def self.spacify *strings
    strings.join(" ")
  end
  def self.minify string, length
    if string.length > length
      string = string[0...length]
      string += "..."
    end
    string
  end
  def self.replacify string, replaced, replacement
    string.gsub(replaced, replacement)
  end
  def self.tokenize string
    string.split(" ")
  end
  def self.removify string, removed
    string.gsub(" " + removed, "")
  end
end
