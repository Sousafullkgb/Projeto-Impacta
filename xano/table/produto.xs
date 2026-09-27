table PRODUTO {
  auth = false

  schema {
    int id
    timestamp created_at?=now {
      visibility = "private"
    }
  
    text nome? filters=trim
    text discricao? filters=trim
    int qtd_disp?
    text url_imagem? filters=trim
    decimal preco?
    bool precisa_produzir?
  }

  index = [
    {type: "primary", field: [{name: "id"}]}
    {type: "btree", field: [{name: "created_at", op: "desc"}]}
  ]

  tags = ["modulo 03"]
  guid = "XPdCuJqXrYy_OMReETgIjFL7FiU"
}