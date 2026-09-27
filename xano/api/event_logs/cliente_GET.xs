// Query all Cliente records
query cliente verb=GET {
  api_group = "Event Logs"

  input {
  }

  stack {
    db.query CLIENTE {
      return = {type: "list"}
    } as $cliente
  }

  response = $cliente
  guid = "gSBS5Fsfrqer86DT8XHHZgf2aME"
}