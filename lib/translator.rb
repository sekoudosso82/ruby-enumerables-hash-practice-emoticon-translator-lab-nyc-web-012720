require "yaml"
require "pry"
def load_library(file_path)
  result = YAML.load_file(file_path)
  
  #           "japanese_emoticon":"meaning"   "english_emoticon":japanese_emoticon
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