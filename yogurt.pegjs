start
  = textOrYogurt*

textOrYogurt
  = yogurtBlock
  / text

yogurtBlock
  = '??' condition:[^\n]+ '\n' body:yogurtBody { 
      return { 
        type: 'condition', 
        condition: condition.join(''),
        body: body
      }
    }

text
  = one:[^?] rest:[^?]+ { 
      return { 
        type: 'text', 
        content: one + rest.join('')
      }
    }

yogurtBody
  = content:indentedline+ empties:emptyline* {
      return content + empties
    }

emptyline
  = '\n'

indentedline
  = indent+ line:[^\n]* '\n' { 
      return line.join('')
    }

indent "indent" = [ \t\r]