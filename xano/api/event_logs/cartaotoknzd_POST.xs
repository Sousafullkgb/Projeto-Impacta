// Add CARTAOTOKNZD record
query cartaotoknzd verb=POST {
  api_group = "Event Logs"

  input {
    dblink {
      table = "CARTAOTOKNZD"
    }
  }

  stack {
    db.add CARTAOTOKNZD {
      enforce_hidden_fields = false
      data = {created_at: "now"}
    } as $cartaotoknzd
  }

  response = $cartaotoknzd
  guid = "O5sXGoqoKd6z0BgIN0C4lFAFq6M"
}