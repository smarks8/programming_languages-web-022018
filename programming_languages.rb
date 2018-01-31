def reformat_languages(languages)
  new_hash = {}
  languages.each do |oo_or_functional, language_hash|
    language_hash.each do |language, attribute_hash|
      attribute_hash.each do |attribute, str_value|
        if new_hash[language].nil?
          new_hash[language] = {}
        end
        new_hash[language][:style] ||= [] 
        new_hash[language][:style] << oo_or_functional                              
        if new_hash[language][attribute].nil?

          new_hash[language][attribute] = str_value  
        end
      end
    end
  end
  new_hash
end

# def reformat_languages(languages)
#   new_languages = {}
#   languages.each do |type, hash|
#     hash.each do |name, attributes|
#       new_languages[name] ||= attributes
#       new_languages[name][:style] ||= []
#       new_languages[name][:style] << type
#     end
#   end
#   new_languages
# end
