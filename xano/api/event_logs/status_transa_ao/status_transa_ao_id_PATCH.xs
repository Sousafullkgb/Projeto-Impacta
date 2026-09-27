// Edit STATUS_TRANSAÇAO record
query "status_transa_ao/{status_transa_ao_id}" verb=PATCH {
  api_group = "Event Logs"

  input {
    int status_transa_ao_id? filters=min:1
    dblink {
      table = "STATUS_TRANSAÇAO"
    }
  }

  stack {
    util.get_raw_input {
      encoding = "json"
      exclude_middleware = false
    } as $raw_input
  
    db.patch "STATUS_TRANSAÇAO" {
      field_name = "id"
      field_value = $input.status_transa_ao_id
      data = `$input|pick:($raw_input|keys)`|filter_null|filter_empty_text
    } as $status_transa_ao
  }

  response = $status_transa_ao
  guid = "6Wnm8i9G0mRohHqS-tUW0jXSqZc"
}