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

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end