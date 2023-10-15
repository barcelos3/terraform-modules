output "sbus_id" {
  value       = module.sbus.sbus_id
  description = "service bus id"
}

output "sbus_name" {
  value       = module.sbus.sbus_name
  description = "service bus name"
}

output "topic_id" {
  value       = module.topics.topic_id
  description = "topics id"
}

output "topic_name" {
  value       = module.topics.topic_name
  description = "topic name"
}

output "queue_id" {
  value       = module.queues.queue_id
  description = "queue id"
}

output "queue_name" {
  value       = module.queues.queue_name
  description = "queue name"
}
