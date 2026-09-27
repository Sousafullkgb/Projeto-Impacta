// Add cep record
query cep verb=POST {
  api_group = "Event Logs"

  input {
    dblink {
      table = "CEP"
    }
  }

  stack {
    db.add CEP {
      enforce_hidden_fields = false
      data = {created_at: "now"}
    } as $cep
  }

  response = $cep
  guid = "ndSlML3oVXHf5_id3f-MsQsjK1I"
}