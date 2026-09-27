table PEDIDO {
  auth = false

  schema {
    int id
    timestamp created_at?=now {
      visibility = "private"
    }
  
    decimal total?
    text nfc_e? filters=trim
    text cod_entrega? filters=trim
    int cliente_id?
    int status_pedido_id?
  }

  index = [
    {type: "primary", field: [{name: "id"}]}
    {type: "btree", field: [{name: "created_at", op: "desc"}]}
  ]

  tags = ["modulo 03"]
  guid = "NSPKXdhRQY0zxaZK2wUzcv2MGO4"
}