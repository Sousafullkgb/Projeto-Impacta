// Query all STATUS_OP records
query status_op verb=GET {
  api_group = "Event Logs"

  input {
  }

  stack {
    db.query STATUS_OP {
      return = {type: "list"}
    } as $status_op
  }

  response = $status_op
  guid = "v0x8jog7YNw5mNEWz-TcRY87064"
}