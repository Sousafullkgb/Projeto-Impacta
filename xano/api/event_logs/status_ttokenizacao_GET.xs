// Query all STATUS_TTOKENIZACAO records
query status_ttokenizacao verb=GET {
  api_group = "Event Logs"

  input {
  }

  stack {
    db.query STATUS_TTOKENIZACAO {
      return = {type: "list"}
    } as $status_ttokenizacao
  }

  response = $status_ttokenizacao
  guid = "8XnELoSamfs0DBGYl4JjWrn4WuI"
}