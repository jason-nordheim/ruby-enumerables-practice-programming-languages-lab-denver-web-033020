def reformat_languages(languages)
  # your code here
  output = {}
  languages.each { |type,lang_hash|
    lang_hash.each { | lang, type_hash |
      type_hash.each { | type, value|
        output[lang] = {:type=>value,:style=>type}
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
