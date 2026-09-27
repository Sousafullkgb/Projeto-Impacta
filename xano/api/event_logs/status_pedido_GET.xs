// Query all STATUS_PEDIDO records
query status_pedido verb=GET {
  api_group = "Event Logs"

  input {
  }

  stack {
    db.query STATUS_PEDIDO {
      return = {type: "list"}
    } as $status_pedido
  }

  response = $status_pedido
  guid = "nkgMoonviY1-8DGHqf_xrhLgTJ4"
}