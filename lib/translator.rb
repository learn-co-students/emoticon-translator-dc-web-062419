require "yaml"

def load_library(file_path)
  lib = {"get_meaning" => {}, "get_emoticon" => {}}
  YAML.load_file(file_path).each do |meaning, emoticons|
    lib["get_meaning"][emoticons[1]] = meaning
    lib["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  lib
end

def get_japanese_emoticon(file, english_emoticon)
  emoticons = load_library(file)
  if emoticons["get_emoticon"][english_emoticon]
    return emoticons["get_emoticon"][english_emoticon]
  else
    return 'Sorry, that emoticon was not found'
  end
end

def get_english_meaning(file, japanese_emoticon)
  emoticons = load_library(file)
  if emoticons["get_meaning"][japanese_emoticon]
    return emoticons["get_meaning"][japanese_emoticon]
  else
    return 'Sorry, that emoticon was not found'
  end
end