// Delete papel record.
query "papel/{papel_id}" verb=DELETE {
  api_group = "Event Logs"

  input {
    int papel_id? filters=min:1
  }

  stack {
    db.del PAPEL {
      field_name = "id"
      field_value = $input.papel_id
    }
  }

  response = null
  guid = "JouEfTJ7LslCPNZJblGq1zoTG7s"
}