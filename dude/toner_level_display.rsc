if(string_substring(toner_level(), "error"),
  concatenate(toner_level(), "%"),
  toner_level()
)