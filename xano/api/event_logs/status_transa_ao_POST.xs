// Add STATUS_TRANSAÇAO record
query status_transa_ao verb=POST {
  api_group = "Event Logs"

  input {
    dblink {
      table = "STATUS_TRANSAÇAO"
    }
  }

  stack {
    db.add "STATUS_TRANSAÇAO" {
      enforce_hidden_fields = false
      data = {created_at: "now"}
    } as $status_transa_ao
  }

  response = $status_transa_ao
  guid = "2sYfyJkep23LJz3pGqceufjAI8Q"
}