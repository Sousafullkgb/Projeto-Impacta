// Query all ITEM records
query item verb=GET {
  api_group = "Event Logs"

  input {
  }

  stack {
    db.query ITEM {
      return = {type: "list"}
    } as $item
  }

  response = $item
  guid = "SCS6YIcZzDLUdubOgArlcJgSwLo"
}