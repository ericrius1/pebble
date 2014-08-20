utils = {}

module.exports = utils

utils.hslToFillStyle = (h, s, l, a)->
  if (a is undefined) 
    return ["hsl(", h, ",", s, "%,", l, "%)"].join('')
  else 
    return ["hsla(", h, ",", s, "%,", l, "%,", a, ")"].join('')


utils.rgbToFillStyle = (r, g, b, a)->
  if (a is undefined) 
    return ["rgb(", r, ",", g, ",", b, ")"].join('')
  else 
    return ["rgba(", r, ",", g, ",", b, ",", a, ")"].join('')
  
