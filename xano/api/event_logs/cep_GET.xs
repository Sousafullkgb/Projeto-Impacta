// Query all cep records
query cep verb=GET {
  api_group = "Event Logs"

  input {
  }

  stack {
    db.query CEP {
      return = {type: "list"}
    } as $cep
  }

  response = $cep
  guid = "jMG0Nc7y_mtPMxSMPUfyoE_ncy0"
}