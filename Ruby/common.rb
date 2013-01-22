require "pp"
require "rubygems"
require 'bundler'

Bundler.require

def run(title, &code)
  puts title.bright
  puts code.to_source.gsub(/^\s+/, "   ")
  puts "=> ".bright + code.call.inspect
end

