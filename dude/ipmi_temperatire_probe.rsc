# IPMI temperatire probe

# Available
ipmi_board_temperature_avail()

# Error
if(ipmi_board_temperature() < 25, "", "Servers room temperature above 25°C")

# Value
ipmi_board_temperature()

# Unit
°C