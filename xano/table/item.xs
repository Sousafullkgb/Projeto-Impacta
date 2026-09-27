table ITEM {
  auth = false

  schema {
    int id
    timestamp created_at?=now {
      visibility = "private"
    }
  
    int pedido_id?
    int qtd?
    decimal valor_unit?
    decimal subtotal?
    int produto_id?
    int status_item_id?
  }

  index = [
    {type: "primary", field: [{name: "id"}]}
    {type: "btree", field: [{name: "created_at", op: "desc"}]}
  ]

  tags = ["modulo 03"]
  guid = "QZ0jk603_utBYx6r2w7aQQrsD_Q"
}