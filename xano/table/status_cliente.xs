table STATUS_CLIENTE {
  auth = false

  schema {
    int id
    timestamp created_at?=now {
      visibility = "private"
    }
  
    text status? filters=trim
  }

  index = [
    {type: "primary", field: [{name: "id"}]}
    {type: "btree|unique", field: [{name: "status", op: "asc"}]}
  ]

  tags = ["modulo 01"]
  guid = "Px2JbmjP97FuB2kMfbzylhqlXyc"
}