output "queue_id" {
  value       = [for i in module.queues : i.queue_id]
  description = "queue id"
}

output "queue_name" {
  value       = [for i in module.queues : i.queue_name]
  description = "queue name"
}
