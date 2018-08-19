require "yaml"


def load_library(file)
  emoticons = YAML.load_file("#{file}")
  return_hash = {
    "get_emoticon" => {},
    "get_meaning" => {}
  }
  
  emoticons.each do |meaning, array|
    return_hash["get_meaning"][array[1]] = meaning
    return_hash["get_emoticon"][array[0]] = array[1]
  end
  
  return_hash
end

def get_japanese_emoticon(file, english_emoticon)
  emoticons = load_library(file)
  emoticons["get_emoticon"][english_emoticon]
end

def get_english_meaning
  # code goes here
end