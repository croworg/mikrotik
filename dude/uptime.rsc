if(string_size(oid("1.3.6.1.2.1.1.3.0"))=0,
  "",
  concatenate(
    "uptime: ",
    if(string_find(oid("1.3.6.1.2.1.1.3.0"), " ")<4294967295,
      concatenate(
        string_substring(oid("1.3.6.1.2.1.1.3.0"), 0, string_find(oid("1.3.6.1.2.1.1.3.0"), " ")),
        " ",
        string_substring(oid("1.3.6.1.2.1.1.3.0"), string_find(oid("1.3.6.1.2.1.1.3.0"), " ")+1, 2), "h "
      ),
      concatenate(string_substring(oid("1.3.6.1.2.1.1.3.0"), 0, 2), "h ")
    ),
    string_substring(oid("1.3.6.1.2.1.1.3.0"), string_find(oid("1.3.6.1.2.1.1.3.0"), ":")+1, 2), "m"
  )
)