// Query all OP records
query op verb=GET {
  api_group = "Event Logs"

  input {
  }

  stack {
    db.query OP {
      return = {type: "list"}
    } as $op
  }

  response = $op
  guid = "oVcvaPlWMnOWKa81nK7ThZfl6GU"
}