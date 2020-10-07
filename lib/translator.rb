# require modules here
require "yaml"

def load_library(file)
  # code goes here
  emote_library = YAML.load_file(file)
  emote_hash = {}
  emote_library.each do |emote|
    emote_hash[emote[0]] = {
      :english => emote[1][0],
      :japanese => emote[1][1]
    }
  end
  emote_hash
end

def get_japanese_emoticon(file, emoticon)
  
end

def get_english_meaning(file, emoticon)
  emote_lib = load_library(file)
  emote_lib.each do |meaning|
    p meaning
end
