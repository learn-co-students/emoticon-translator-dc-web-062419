# require modules here
require "yaml"
require "pry"

def load_library(file_path)
  # code goes here
  library = {"get_meaning" => {}, "get_emoticon" => {} }
  YAML.load_file(file_path).each do |meaning, array|
  english, japanese = array
  library["get_emoticon"][english] = japanese
  library["get_meaning"][japanese] = meaning
  end
  library
end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
  library = load_library(file_path)
  found_emoticon = library["get_emoticon"][emoticon]
  #binding.pry
  if found_emoticon
    found_emoticon
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file_path, emoticon)
  # code goes here
  library = load_library(file_path)
  found_meaning = library["get_meaning"][emoticon]
  if found_meaning
    found_meaning
  else
    "Sorry, that emoticon was not found"
  end
end
