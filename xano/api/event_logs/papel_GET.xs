// Query all papel records
query papel verb=GET {
  api_group = "Event Logs"

  input {
  }

  stack {
    db.query PAPEL {
      return = {type: "list"}
    } as $papel
  }

  response = $papel
  guid = "VSQlx6wHOIdkUFWB1hNmUkpmw8s"
}