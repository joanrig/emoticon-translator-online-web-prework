require "pry"
require "yaml"


def load_library(file_path)
  output = {get_meaning:{}, get_emoticon:{}}
  emoticons = YAML.load_file(file_path)
      
  output
  #binding.pry
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end