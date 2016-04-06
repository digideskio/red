#!/usr/bin/env ruby

require "optparse"

replacements = []

opt_parser = OptionParser.new do |options|
  options.on("-eEXECUTE", "Executes command on each line") do |command|

    #^(?<address>(?:\d,\d)|(?:\d))s\/(?<before>[^\/]+)\/(?<after>[^\/]+)\/
    regex = %r@^(?<address>(?:\d,\d)|(?:\d))s/(?<before>[^/]+)/(?<after>[^/]+)/@

    letter, before, after = command.split("/")
    replacements << [letter, before, after]
  end

  options.on("-h", "--help", "Prints help") do
    puts options
    exit
  end
end

opt_parser.parse!

ARGF.each_line do |line|
  new_line = replacements.inject(line) do |memo, (_letter, before, after)|
    memo.gsub(before, after)
  end

  puts new_line
end
