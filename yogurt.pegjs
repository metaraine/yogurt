start
  = yogurtBlock
  / text

yogurtBlock
  = yogurtCondition

yogurtCondition
  = one:[?] two:[?] rest:[^\n]+ '\n' { return 'a'+one + two + rest.join('') }

text
  = one:[^?] two:[^?]* rest:[^?]* { return 'b'+rest.join('') }

yogurtStart
  = '??'

ws "whitespace" = [ \t\n\r]*