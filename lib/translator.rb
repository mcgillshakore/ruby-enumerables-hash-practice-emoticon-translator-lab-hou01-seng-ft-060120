require "yaml"

def load_library(file)
emoticons = YAML.load_file(file)
emojis = {}
emoticons.each do |mood, value|
  if !emojis.include?(mood)
    emojis[mood] = {}
  end
end

