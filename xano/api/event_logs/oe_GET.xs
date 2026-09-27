// Query all OE records
query oe verb=GET {
  api_group = "Event Logs"

  input {
  }

  stack {
    db.query OE {
      return = {type: "list"}
    } as $oe
  }

  response = $oe
  guid = "LKqEbnB5e1oFvyPG3L9nIE5ejOU"
}