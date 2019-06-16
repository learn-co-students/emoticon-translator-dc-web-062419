require "yaml"

def load_library(file)
  library = {"get_meaning" => {}, "get_emoticon" => {}}
  definitions = YAML.load_file(file)
    definitions.each do |meanings, emoticons|
      english, japanese = emoticons
      library["get_meaning"][japanese] = meanings
      library["get_emoticon"][english] = japanese
  end
  library
end


def get_japanese_emoticon(file, western_emoticon)
 require 'pry'
 #library = {}
 #binding.pry
  library = load_library(file)
  #binding.pry
 a = library["get_emoticon"].fetch(western_emoticon, "emoticon not found")
 #binding.pry
 a
end

def get_english_meaning
  # code goes here
end