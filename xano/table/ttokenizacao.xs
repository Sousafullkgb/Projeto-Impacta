table TTOKENIZACAO {
  auth = false

  schema {
    int id
    timestamp created_at?=now {
      visibility = "private"
    }
  
    int cliente_id?
    text det_cartao_encript? filters=trim
    int status_ttokenizacao_id?
  }

  index = [
    {type: "primary", field: [{name: "id"}]}
    {type: "btree", field: [{name: "created_at", op: "desc"}]}
  ]

  tags = ["modulo 02"]
  guid = "zUc4ve2f5pQRcYWKASgTv0FFImI"
}