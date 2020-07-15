require "yaml"
require "pry"

def load_library(file_path)
  dataset = YAML.load_file(file_path)
  get_meaning, get_emoticon, library = {}, {}, {}
  dataset.each do |meaning, emoticons|
    get_meaning[emoticons[1]] = meaning
    get_emoticon[emoticons[0]] = emoticons[1]
  end
  library["get_meaning"] = get_meaning
  library["get_emoticon"] = get_emoticon
  library
end

def get_japanese_emoticon(file_path, emoticon)
  library = load_library(file_path)
  if library["get_emoticon"].keys.any?(emoticon)
    library["get_emoticon"][emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file_path, emoticon)
  library = load_library(file_path)
  if library["get_meaning"].keys.any?(emoticon)
    library["get_meaning"][emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end
