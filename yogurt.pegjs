start
  = yogurt
  / text

yogurt
  = one:[?] two:[?] rest:.* { return one + two + rest.join('') }

text
  = one:[^?] two:[^?]* rest:.* { console.log(one, two, rest); return rest.join('') }

/*

start
  = additive

additive
  = left:multiplicative "+" right:additive { return left + right; }
  / multiplicative

multiplicative
  = left:primary "*" right:multiplicative { return left * right; }
  / primary

primary
  = integer
  / "(" additive:additive ")" { return additive; }

integer "integer"
  = digits:[0-9]+ { return parseInt(digits.join(""), 10); }

*/
