// Query all STATUS_TESTORNO records
query status_testorno verb=GET {
  api_group = "Event Logs"

  input {
  }

  stack {
    db.query STATUS_TESTORNO {
      return = {type: "list"}
    } as $status_testorno
  }

  response = $status_testorno
  guid = "mZyTDDX7QrXoADj77S1Wc0a1kwI"
}