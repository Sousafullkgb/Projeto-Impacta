// Delete STATUS_TRANSAÇAO record.
query "status_transa_ao/{status_transa_ao_id}" verb=DELETE {
  api_group = "Event Logs"

  input {
    int status_transa_ao_id? filters=min:1
  }

  stack {
    db.del "STATUS_TRANSAÇAO" {
      field_name = "id"
      field_value = $input.status_transa_ao_id
    }
  }

  response = null
  guid = "tMdRxZ2o-7dx2MK6MY6MHXN6Tso"
}