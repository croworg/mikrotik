if(disk_share() = 0,
  "",
  concatenate(
    "D: ",
    disk_share() - disk_share_usage(), " Gb / ",
    disk_share(), " Gb (",
    string_substring(disk_share_usage() / disk_share() * 100, 0, 4), "%)"
  )
)