// Query all usuario records
query usuario verb=GET {
  api_group = "Event Logs"

  input {
  }

  stack {
    db.query "" {
      return = {type: "list"}
    } as $usuario
  }

  response = $usuario
  guid = "92stJj1ttuDjqaoNqWsqtJwAZNQ"
}