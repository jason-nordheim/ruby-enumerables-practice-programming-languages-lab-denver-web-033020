def reformat_languages(languages)
  # your code here
  
  languages.each { |type,lang_hash|
    v.each { | lang, type_hash |
      type_hash.each { | type, value|
        
      }
    }
  }
end

lang_by_style =     {
      :oo => {
        :ruby => {
          :type => "interpreted"
        },
        :javascript => {
          :type => "interpreted"
        },
        :python => {
          :type => "interpreted"
        },
        :java => {
          :type => "compiled"
        }
      },
      :functional => {
        :clojure => {
          :type => "compiled"
        },
        :erlang => {
          :type => "compiled"
        },
        :scala => {
          :type => "compiled"
        },
        :javascript => {
          :type => "interpreted"
        }
      }
    }

reformat_languages(lang_by_style)
