### ver 1
if(or(disk_share(), disk_home(), disk_volume(), disk_home()),
  array_element(array("disk_share()", "disk_home()", "disk_volume", "disk_home()"),
    array_find(array(disk_share(), disk_home(), disk_volume(), disk_home()), max(array(disk_share(), disk_home(), disk_volume(), disk_home())))
  ),
  "disk: error"
)

### ver 2
if(max(array(disk_share(), disk_volume(), disk_home(), disk_distr()))>0,
  concatenate(
    "D: ",
    string_substring(max(array(disk_share_usage(), disk_volume_usage(), disk_home_usage(), disk_distr_usage()))/max(array(disk_share(), disk_home(), disk_volume(), disk_home(), disk_distr()))*100, 0, 4), "% (",
    max(array(disk_share(), disk_volume(), disk_home(), disk_distr()))-max(array(disk_share_usage(), disk_volume_usage(), disk_home_usage(), disk_distr_usage())), " / ",
    max(array(disk_share(), disk_volume(), disk_home(), disk_distr())), " Gb)"
  ),
  "disk: error"
)