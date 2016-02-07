require 'json'
require 'fileutils'

class String
  def untab
    self.split("\t").map { |h| h.strip }
  end
end

class JSONise
  def self.make_hash headers, line
    h = {}
    headers.untab.each_with_index do |header, index|
      h[header.to_sym] = line.untab[index]
    end
    h
  end

  def self.jsonise path
    f = File.readlines "data/#{path}"
    headers = f.shift

    a = []

    f.each do |line|
      a.push(make_hash(headers, line))
    end

    a.to_json
  end
end
