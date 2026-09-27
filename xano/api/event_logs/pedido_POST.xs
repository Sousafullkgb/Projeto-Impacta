// Add PEDIDO record
query pedido verb=POST {
  api_group = "Event Logs"

  input {
    dblink {
      table = "PEDIDO"
    }
  }

  stack {
    db.add PEDIDO {
      enforce_hidden_fields = false
      data = {created_at: "now"}
    } as $pedido
  }

  response = $pedido
  guid = "b7g3E0oW96swHENfVcmwTr9i7lo"
}