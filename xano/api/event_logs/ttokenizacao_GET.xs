// Query all TTOKENIZACAO records
query ttokenizacao verb=GET {
  api_group = "Event Logs"

  input {
  }

  stack {
    db.query TTOKENIZACAO {
      return = {type: "list"}
    } as $ttokenizacao
  }

  response = $ttokenizacao
  guid = "6fzbLeN-A5mWkKZiNrW9VtDL4D8"
}