// Query all TRANSACAO records
query transacao verb=GET {
  api_group = "Event Logs"

  input {
  }

  stack {
    db.query TRANSACAO {
      return = {type: "list"}
    } as $transacao
  }

  response = $transacao
  guid = "Rckl_clYWkWcUBHYlsOIql6vtPA"
}