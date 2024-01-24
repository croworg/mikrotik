round((((oid(concatenate(
  "1.3.6.1.2.1.host.hrStorage.hrStorageTable.hrStorageEntry.hrStorageUsed.",
  array_element(
    oid_column("1.3.6.1.2.1.host.hrStorage.hrStorageTable.hrStorageEntry.hrStorageIndex"),
    array_find(
      oid_column("1.3.6.1.2.1.host.hrStorage.hrStorageTable.hrStorageEntry.hrStorageDescr", 60),
      string_substring(
        oid_column("1.3.6.1.2.1.host.hrStorage.hrStorageTable.hrStorageEntry.hrStorageDescr", 60),
        string_find(oid_column("1.3.6.1.2.1.host.hrStorage.hrStorageTable.hrStorageEntry.hrStorageDescr", 60), "/share"),
        string_find(
          oid_column("1.3.6.1.2.1.host.hrStorage.hrStorageTable.hrStorageEntry.hrStorageDescr", 60),
          ",",
          string_find(oid_column("1.3.6.1.2.1.host.hrStorage.hrStorageTable.hrStorageEntry.hrStorageDescr", 60), "/share")
        ) - string_find(oid_column("1.3.6.1.2.1.host.hrStorage.hrStorageTable.hrStorageEntry.hrStorageDescr", 60), "/share")
      )
    )
  )
)) * oid(concatenate(
  "1.3.6.1.2.1.host.hrStorage.hrStorageTable.hrStorageEntry.hrStorageAllocationUnits.",
  array_element(
    oid_column("1.3.6.1.2.1.host.hrStorage.hrStorageTable.hrStorageEntry.hrStorageIndex"),
    array_find(
      oid_column("1.3.6.1.2.1.host.hrStorage.hrStorageTable.hrStorageEntry.hrStorageDescr", 60),
      string_substring(
        oid_column("1.3.6.1.2.1.host.hrStorage.hrStorageTable.hrStorageEntry.hrStorageDescr", 60),
        string_find(oid_column("1.3.6.1.2.1.host.hrStorage.hrStorageTable.hrStorageEntry.hrStorageDescr", 60), "/share"),
        string_find(
          oid_column("1.3.6.1.2.1.host.hrStorage.hrStorageTable.hrStorageEntry.hrStorageDescr", 60),
          ",",
          string_find(oid_column("1.3.6.1.2.1.host.hrStorage.hrStorageTable.hrStorageEntry.hrStorageDescr", 60), "/share")
        ) - string_find(oid_column("1.3.6.1.2.1.host.hrStorage.hrStorageTable.hrStorageEntry.hrStorageDescr", 60), "/share")
      )
    )
  )
))) / 1024) / 1024) / 1024)