require "pry"
require "yaml"

def load_library(file_path)
  get_meaning, get_emoticon = {}, {}
  emoticons = YAML.load_file(file_path)
 
  #emos[0] = usa_emo 
  #emos[1] = japanese_emo
    
  emoticons.each do |meaning, emos|
    get_meaning[emos[1]] = meaning
    get_emoticon[emos[0]] = emos[1]
  end
  
  result = {"get_meaning" => get_meaning, "get_emoticon" => get_emoticon}
  result
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end