// Add ITEM record
query item verb=POST {
  api_group = "Event Logs"

  input {
    dblink {
      table = "ITEM"
    }
  }

  stack {
    db.add ITEM {
      enforce_hidden_fields = false
      data = {created_at: "now"}
    } as $item
  }

  response = $item
  guid = "M4H9N09e3b9N-GVtuK9MT3S-Rl8"
}