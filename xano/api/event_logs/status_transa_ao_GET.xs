// Query all STATUS_TRANSAÇAO records
query status_transa_ao verb=GET {
  api_group = "Event Logs"

  input {
  }

  stack {
    db.query "STATUS_TRANSAÇAO" {
      return = {type: "list"}
    } as $status_transa_ao
  }

  response = $status_transa_ao
  guid = "WuhQLz7TgUgmSwW2B1cbHGARdmI"
}