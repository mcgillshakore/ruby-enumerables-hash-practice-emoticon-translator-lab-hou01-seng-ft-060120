require "yaml"

def load_library(file)
emoticons = YAML.load_file(file)
emojis = {}
  emoticons.each do |mood, value|
    if !emojis.include?(mood)
    emojis[mood] = {}
    end
    if !emojis[mood].include?(value[0])
      emojis[mood] = {:english => value[0], :japanese => value[1]}
    end
  end
end