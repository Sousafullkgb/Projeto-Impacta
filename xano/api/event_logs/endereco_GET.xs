// Query all Endereco records
query endereco verb=GET {
  api_group = "Event Logs"

  input {
  }

  stack {
    db.query ENDERECO {
      return = {type: "list"}
    } as $endereco
  }

  response = $endereco
  guid = "bXDF6BxlCti4g8atzj9sJqqfBO0"
}