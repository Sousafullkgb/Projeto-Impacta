table TRANSACAO {
  auth = false

  schema {
    int id
    timestamp created_at?=now {
      visibility = "private"
    }
  
    text clienteas_sas? filters=trim
    text idpayment? filters=trim
    text tipo? filters=trim
    decimal valor?
    text datavenc? filters=trim
    text descricao? filters=trim
    int STATUS_TRANSACAO_ID?
  }

  index = [
    {type: "primary", field: [{name: "id"}]}
    {type: "btree", field: [{name: "created_at", op: "desc"}]}
  ]

  tags = ["modulo 01"]
  guid = "7NFkpnQKyufkm9V3hyqRTsQnCys"
}