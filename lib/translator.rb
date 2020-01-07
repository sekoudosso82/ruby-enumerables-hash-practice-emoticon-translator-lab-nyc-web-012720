# require modules here
require "yaml"
require "pry"
def load_library(file_path)
  result = YAML.load_file(file_path)
  
  #           "japanese_emoticon":"meaning"   "english_emoticon":japanese_emoticon
<<<<<<< HEAD
                # "☜(⌒▽⌒)☞" => "angel"        " O:)" => "☜(⌒▽⌒)☞"
  final_hash = { "get_meaning":{},              "get_emoticon":{} }
  
  result.each do |meaning ,emoticon|
          # binding.pry
                if final_hash[:get_meaning][emoticon[1]]== nil 
                  final_hash[:get_meaning][emoticon[1]] =  meaning
                end
              
                if final_hash[:get_emoticon][emoticon[0]] == nil 
                  final_hash[:get_emoticon][emoticon[0]] = emoticon[1]
                end 
  end 
  final_hash
end


def get_japanese_emoticon(file_path, emoticon)
  # binding.pry
  sheet  = load_library(file_path) 
 
  result = sheet[:get_emoticon][emoticon]

  if result == nil 
      return "Sorry, that emoticon was not found"
  end
  
  return result            
end


def get_english_meaning(file_path, emoticon)
  sheet = load_library(file_path)
  result = sheet[:get_meaning][emoticon]
  
  if result == nil 
    return "Sorry, that emoticon was not found"
  end 
  
  return result

=======
              # "☜(⌒▽⌒)☞" => "angel"        "O:)" => "☜(⌒▽⌒)☞"
  final_hash = { "get_meaning":{}, "get_emoticon":{} }
  
  result.each do |meaning ,emoticon|
          emoticon.each do |japanese_emoticon, english_emoticon|
           binding.pry
                if final_hash[:get_meaning][japanese_emoticon]== nil 
                  final_hash[:get_meaning][japanese_emoticon] =  meaning
                end
              
                if final_hash[:get_emoticon][english_emoticon] == nil 
                  final_hash[:get_emoticon][english_emoticon] = japanese_emoticon
                end 
                
          end
  end 
  final_hash
end



def get_japanese_emoticon
  # code goes here
>>>>>>> cde7537be5c5e4c8a00b5d8351d79e9792bee3ee
end




