// Delete ITEM record.
query "item/{item_id}" verb=DELETE {
  api_group = "Event Logs"

  input {
    int item_id? filters=min:1
  }

  stack {
    db.del ITEM {
      field_name = "id"
      field_value = $input.item_id
    }
  }

  response = null
  guid = "nCtHqTA8g0fXP_xm6fzE9KjYQ9c"
}