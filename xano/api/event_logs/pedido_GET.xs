// Query all PEDIDO records
query pedido verb=GET {
  api_group = "Event Logs"

  input {
  }

  stack {
    db.query PEDIDO {
      return = {type: "list"}
    } as $pedido
  }

  response = $pedido
  guid = "Lysr68lGB65prIosXE8So2nvjGM"
}