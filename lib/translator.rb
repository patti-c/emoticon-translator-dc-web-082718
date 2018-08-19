require "yaml"


def load_library(file)
  emoticons = YAML.load_file("#{file}")
  return_hash = {
    "get_emoticon" => {},
    "get_meaning" => {}
  }
  
  emoticons.each do |key, array|
    return_hash["get_meaning"][array[1]] = key
  
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end