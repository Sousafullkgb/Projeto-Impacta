// Add TTOKENIZACAO record
query ttokenizacao verb=POST {
  api_group = "Event Logs"

  input {
    dblink {
      table = "TTOKENIZACAO"
    }
  }

  stack {
    db.add TTOKENIZACAO {
      enforce_hidden_fields = false
      data = {created_at: "now"}
    } as $ttokenizacao
  }

  response = $ttokenizacao
  guid = "3hksvn7mJj7NZ2dIKA8w5QGUB_A"
}