addon user {
  input {
    int user_id? {
      table = "USER"
    }
  }

  stack {
    db.query USER {
      where = $db.USER.id == $input.user_id
      return = {type: "single"}
    }
  }

  guid = "fI5VpxYryCJpzhx40j0gOMcUebI"
}