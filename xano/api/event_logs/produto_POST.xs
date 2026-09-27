// Add PRODUTO record
query produto verb=POST {
  api_group = "Event Logs"

  input {
    dblink {
      table = "PRODUTO"
    }
  }

  stack {
    db.add PRODUTO {
      enforce_hidden_fields = false
      data = {created_at: "now"}
    } as $produto
  }

  response = $produto
  guid = "lcQdRqy5LuivYNzm8G3PpITcTpw"
}