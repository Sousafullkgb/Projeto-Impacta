// Query all PRODUTO records
query produto verb=GET {
  api_group = "Event Logs"

  input {
  }

  stack {
    db.query PRODUTO {
      return = {type: "list"}
    } as $produto
  }

  response = $produto
  guid = "Lp9qnikNdqN-ghmmJUYZKo9l1fs"
}