// Query all SOLCANCELAMENTO records
query solcancelamento verb=GET {
  api_group = "Event Logs"

  input {
  }

  stack {
    db.query SOLCANCELAMENTO {
      return = {type: "list"}
    } as $solcancelamento
  }

  response = $solcancelamento
  guid = "JN9t_U6k2S6AQ20E3H-bzI2bnVM"
}