// Get Cliente record
query "cliente/{cliente_id}" verb=GET {
  api_group = "Event Logs"

  input {
    int cliente_id? filters=min:1
  }

  stack {
    db.get CLIENTE {
      field_name = "id"
      field_value = $input.cliente_id
    } as $cliente
  
    precondition ($cliente != null) {
      error_type = "notfound"
      error = "Not Found."
    }
  }

  response = $cliente
  guid = "AQlVj9RnxAQEx7J9QqRhng-TjEg"
}