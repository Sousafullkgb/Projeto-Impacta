// Add Endereco record
query endereco verb=POST {
  api_group = "Event Logs"

  input {
    dblink {
      table = "ENDERECO"
    }
  }

  stack {
    db.add ENDERECO {
      enforce_hidden_fields = false
      data = {created_at: "now"}
    } as $endereco
  }

  response = $endereco
  guid = "Bwv6CP9gJ4tbVzy_O2DOG94YLOI"
}