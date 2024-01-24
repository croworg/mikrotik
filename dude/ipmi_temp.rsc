if(ipmi_board_temperature_avail(),
  round(oid(concatenate("1.3.6.1.4.1.674.10892.5.4.700.20.1.6.1.",
    array_element(
      oid_column("1.3.6.1.4.1.674.10892.5.4.700.20.1.2.1", 60),
      array_find(
        oid_column("1.3.6.1.4.1.674.10892.5.4.700.20.1.8.1", 60),
        "System Board Inlet Temp"
      )
    )
  )) / 10),
  "error"
)