locals {
  tags_values = {
    terraform = true
  }
  rules = csvdecode(file("./rules/rules.csv"))
}