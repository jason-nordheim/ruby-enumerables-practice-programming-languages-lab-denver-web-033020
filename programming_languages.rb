require 'pp'

def reformat_languages(languages)
  # your code here
  output = {}
  languages.each { |style,lang_hash|
    lang_hash.each { | lang, type_hash |
      type_hash.each { | type, value|
        if output[lang][:style] != nil
          output[lang] = {:type=>value,:style=>[style]}
        else
          output[lang][:style] << style
        end
      }
    }
  }
  output
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

pp reformat_languages(lang_by_style)
