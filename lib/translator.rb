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
  
  translations = {"get_meaning" => get_meaning, "get_emoticon" => get_emoticon}
  translations
  #binding.pry
end


# def get_japanese_emoticon(yaml_file, emoticon)
#   library = load_library(yaml_file)
#   response = nil
#   library["get_emoticon"].each do |english, japanese|
#     if emoticon == english
#       response = japanese
#     end
#   end
#   if response == nil
#     return "Sorry, that emoticon was not found"
#   else
#     return response
#   end
# end	

def get_japanese_emoticon(file_path, emoji)
  emoticons = load_library(file_path)
  answer = NIL
  
  emoticons["get_emoticon"].each do |english, japanese|
    if emoji == english
      answer = japanese
    end
  end
  
  if answer == NIL
    puts "Sorry, that emoticon was not found"
  else
    answer
  end
#binding.pry
end


def get_english_meaning
  # code goes here
end