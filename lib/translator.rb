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
  library = load_library(file)
 a = library["get_emoticon"].fetch(western_emoticon, "Sorry, that emoticon was not found")
 a
end

def get_english_meaning(file, japanese_emoticon)
  
  library = load_library(file)
  meaning = library["get_meaning"].fetch(japanese_emoticon, "Sorry, that emoticon was not found")
  meaning
  
end