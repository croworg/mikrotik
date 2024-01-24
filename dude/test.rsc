if(oid("1.3.6.1.2.1.25.2.3.1.5.33") = 0,
  "",
  concatenate(
    "Disc:  ",
    (round(((oid("1.3.6.1.2.1.25.2.3.1.5.33")-oid("1.3.6.1.2.1.25.2.3.1.6.33"))*oid("1.3.6.1.2.1.25.2.3.1.4.33"))/1024/1024/1024)), " / ",
    (round(oid("1.3.6.1.2.1.25.2.3.1.5.33")*oid("1.3.6.1.2.1.25.2.3.1.4.33")/1024/1024/1024), "Gb")
  )
)

# Disk usage in percent
if(string_find(oid_column("1.3.6.1.2.1.25.2.3.1.3", 60), "/home") <> 4294967295,
  if(string_find(
      oid(concatenate(
        "iso.org.dod.internet.mgmt.mib-2.host.hrStorage.hrStorageTable.hrStorageEntry.hrStorageType.",
        array_element(
          oid_column("iso.org.dod.internet.mgmt.mib-2.host.hrStorage.hrStorageTable.hrStorageEntry.hrStorageIndex"),
          array_find(
            oid_column("1.3.6.1.2.1.25.2.3.1.3", 60),
            string_substring(
              oid_column("1.3.6.1.2.1.25.2.3.1.3", 60),
              string_find(oid_column("1.3.6.1.2.1.25.2.3.1.3", 60), "/home"),
              string_find(
                oid_column("1.3.6.1.2.1.25.2.3.1.3", 60),
                ",",
                string_find(oid_column("1.3.6.1.2.1.25.2.3.1.3", 60), "/home")
              ) - string_find(oid_column("1.3.6.1.2.1.25.2.3.1.3", 60), "/home")
            )
          )
        )
      )),
      "iso.org.dod.internet.mgmt.mib-2.host.hrStorage.hrStorageTypes.hrStorageFixedDisk"
    ) <> 4294967295,
    concatenate(string_substring(
      oid(concatenate(
        "iso.org.dod.internet.mgmt.mib-2.host.hrStorage.hrStorageTable.hrStorageEntry.hrStorageUsed.",
        array_element(
          oid_column("iso.org.dod.internet.mgmt.mib-2.host.hrStorage.hrStorageTable.hrStorageEntry.hrStorageIndex"),
          array_find(
            oid_column("1.3.6.1.2.1.25.2.3.1.3", 60),
            string_substring(
              oid_column("1.3.6.1.2.1.25.2.3.1.3", 60),
              string_find(oid_column("1.3.6.1.2.1.25.2.3.1.3", 60), "/home"),
              string_find(
                oid_column("1.3.6.1.2.1.25.2.3.1.3", 60),
                ",",
                string_find(oid_column("1.3.6.1.2.1.25.2.3.1.3", 60), "/home")
              ) - string_find(oid_column("1.3.6.1.2.1.25.2.3.1.3", 60), "/home")
            )
          )
        )
      )) / oid(concatenate(
        "iso.org.dod.internet.mgmt.mib-2.host.hrStorage.hrStorageTable.hrStorageEntry.hrStorageSize.",
        array_element(
          oid_column("iso.org.dod.internet.mgmt.mib-2.host.hrStorage.hrStorageTable.hrStorageEntry.hrStorageIndex"),
          array_find(
            oid_column("1.3.6.1.2.1.25.2.3.1.3", 60),
            string_substring(
              oid_column("1.3.6.1.2.1.25.2.3.1.3", 60),
              string_find(oid_column("1.3.6.1.2.1.25.2.3.1.3", 60), "/home"),
              string_find(
                oid_column("1.3.6.1.2.1.25.2.3.1.3", 60),
                ",",
                string_find(oid_column("1.3.6.1.2.1.25.2.3.1.3", 60), "/home")
              ) - string_find(oid_column("1.3.6.1.2.1.25.2.3.1.3", 60), "/home")
            )
          )
        )
      )) * 100, 0, 4
    ), " %"),
    ""
  ),
  ""
)