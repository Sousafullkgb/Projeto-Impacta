// Query all STATUS_OE records
query status_oe verb=GET {
  api_group = "Event Logs"

  input {
  }

  stack {
    db.query STATUS_OE {
      return = {type: "list"}
    } as $status_oe
  }

  response = $status_oe
  guid = "7BYNgtS2_Jf98hzYN6l1wrr3zUg"
}