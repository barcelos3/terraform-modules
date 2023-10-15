output "topics_id" {
  value       = [for i in module.topics : i.topics_id]
  description = "topics id"
}

output "topics_name" {
  value       = [for i in module.topics : i.topics_name]
  description = "topics name"
}
