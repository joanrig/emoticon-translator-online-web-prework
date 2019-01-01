require "pry"
require "yaml"


def load_library(file_path)
  result = {"get_meaning":{}, "get_emoticon":{}}
  emoticons = YAML.load_file(file_path)
 
# emos[0] = american emo 
# emos[1] = japanese emo 
 
  emoticons.each do |meaning, emos|
    result["get_meaning"] = emos[1]
    binding.pry
    result["get_emoticon"][emos[1]] = meaning
    
    result["get_emoticon"] = emos[0]
    result["get_emoticon"]emos[0] = emos[1]
  end
  result
  
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end