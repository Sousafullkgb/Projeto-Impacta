// Get STATUS_TRANSAÇAO record
query "status_transa_ao/{status_transa_ao_id}" verb=GET {
  api_group = "Event Logs"

  input {
    int status_transa_ao_id? filters=min:1
  }

  stack {
    db.get "STATUS_TRANSAÇAO" {
      field_name = "id"
      field_value = $input.status_transa_ao_id
    } as $status_transa_ao
  
    precondition ($status_transa_ao != null) {
      error_type = "notfound"
      error = "Not Found."
    }
  }

  response = $status_transa_ao
  guid = "cw5CM8pvtrD9lCP8-P8BlGWVb4I"
}