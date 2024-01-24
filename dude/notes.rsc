string_size(oid("1.3.6.1.4.1.1347.42.3.1.1.1.1.1")) > 0


or(oid("1.3.6.1.4.1.1347.42.2.1.1.1.6.1.1"), oid("1.3.6.1.4.1.1347.42.3.1.1.1.1.1"))

if(disk_volume()>0,
  concatenate(
    "D: ",
    disk_volume()-disk_volume_usage(), " Gb / ",
    disk_volume(), " Gb (",
    string_substring(disk_volume_usage()/disk_volume()*100, 0, 4), "%)"
  ),
  "disk: error"
)
if(disk_home()>0,
  concatenate(
    "D: ",
    disk_home()-disk_home_usage(), " Gb / ",
    disk_home(), " Gb (",
    string_substring(disk_home_usage()/disk_home()*100, 0, 4), "%)"
  ),
  "disk: error"
)
if(disk_share()>0,
  concatenate(
    "D: ",
    disk_share()-disk_share_usage(), " Gb / ",
    disk_share(), " Gb (",
    string_substring(disk_share_usage()/disk_share()*100, 0, 4), "%)"
  ),
  "disk: error"
)
if(disk_silo()>0,
  concatenate(
    "D: ",
    disk_silo()-disk_silo_usage(), " Gb / ",
    disk_silo(), " Gb (",
    string_substring(disk_silo_usage()/disk_silo()*100, 0, 4), "%)"
  ),
  "disk: error"
)