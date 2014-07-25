#! /usr/bin/env ruby

flacs = Dir["#{ENV['HOME']}/Music/{jazz,rock,soul,baroque}/**/*.flac"]

srand Time.now.strftime("%s").to_i
puts flacs[rand(flacs.size)]
