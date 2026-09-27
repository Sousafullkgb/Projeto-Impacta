query BuscaCep verb=GET {
  api_group = "Customização"

  input {
    text cep? filters=trim
  }

  stack {
    db.query CEP {
      where = $db.CEP.cep == $input.cep
      return = {type: "list"}
    } as $CEP1
  }

  response = $CEP1
  guid = "E3RZg6AnDfM5QO1x1yyQytUhQ5M"
}