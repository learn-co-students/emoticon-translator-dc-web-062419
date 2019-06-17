# require modules here
require "yaml"
require "pry"

def load_library(emoticons_path)
  # code goes here
  library = YAML.load_file("lib/emoticons.yml")
  emoticon_hash = {}
  emoticon_hash["get_emoticon"]= {}
  emoticon_hash["get_meaning"] = {}
  
  library.each do |meaning_key, emoticon_array|
  emoticon_array.each do |emoticon|
     emoticon_hash["get_meaning"][emoticon] = meaning_key
     emoticon_hash["get_emoticon"][emoticon_array[0]] = emoticon_array[1]
end
end
emoticon_hash
end

def get_japanese_emoticon(emoticons_path, emoticon)
  # code goes here
  emoticon_hash = load_library(emoticons_path)
 result = emoticon_hash["get_emoticon"][emoticon]
 if result == nil
   "Sorry, that emoticon was not found"
   else 
   result
   end
end

def get_english_meaning(emoticon_path, emoticon)
  # code goes here
  emoticon_hash = load_library(emoticon_path)
  result = emoticon_hash["get_meaning"][emoticon]
  if result == nil
  "Sorry, that emoticon was not found"
  else
    result
  end
end