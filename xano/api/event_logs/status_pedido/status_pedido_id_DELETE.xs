// Delete STATUS_PEDIDO record.
query "status_pedido/{status_pedido_id}" verb=DELETE {
  api_group = "Event Logs"

  input {
    int status_pedido_id? filters=min:1
  }

  stack {
    db.del STATUS_PEDIDO {
      field_name = "id"
      field_value = $input.status_pedido_id
    }
  }

  response = null
  guid = "4LZzpUmP6VB4hfH9_n9c4vHzgT0"
}