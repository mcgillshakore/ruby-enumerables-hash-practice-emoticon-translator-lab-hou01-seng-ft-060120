require "yaml"

def load_library(file_path)
  file = 'lib/emoticons.yml'
  emoticons = YAML.load_file(file)
  organized_emojis = {}

  emojis.each do |key, value|
    
    if !organized_emojis.include?(key)
      organized_emojis[key] = {}
    end

    if !organized_emojis[key].include?(value[0])
        organized_emojis[key] = {english: value[0], japanese: value[1]}
    end
  end 
  return organized_emojis
end

