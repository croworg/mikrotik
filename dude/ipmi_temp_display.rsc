if(ipmi_temp_avail(),
  concatenate("temp: ", ipmi_temp(), "°C")
  "temp: error"
)