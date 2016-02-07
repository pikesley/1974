#!/usr/bin/env ruby

require_relative 'jsonise'

outdir = 'outputs'
FileUtils.mkdir_p outdir

Dir.entries('data').each do |file|
  unless file[0] == '.'
    print "Processing #{file}... "
    JSONise.jsonise(file)
    puts 'done'


    outfile = "#{outdir}/#{file}.json"
    File.open outfile, 'w' do |f|
      print "Writing #{outfile}... "
      f.write outfile
      puts 'done'
    end
  end
end
