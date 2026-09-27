// Delete TRANSACAO record.
query "transacao/{transacao_id}" verb=DELETE {
  api_group = "Event Logs"

  input {
    int transacao_id? filters=min:1
  }

  stack {
    db.del TRANSACAO {
      field_name = "id"
      field_value = $input.transacao_id
    }
  }

  response = null
  guid = "SnZlvy1dcpuftN6WtECqW4Gx7xY"
}