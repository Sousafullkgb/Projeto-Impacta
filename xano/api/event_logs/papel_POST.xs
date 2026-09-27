// Add papel record
query papel verb=POST {
  api_group = "Event Logs"

  input {
    dblink {
      table = "PAPEL"
    }
  }

  stack {
    db.add PAPEL {
      enforce_hidden_fields = false
      data = {created_at: "now"}
    } as $papel
  }

  response = $papel
  guid = "vC6GSO3XhK9WTkY-i4SWTu1lvgE"
}