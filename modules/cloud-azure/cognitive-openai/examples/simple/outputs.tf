output "cognitive_openai_id" {
  value       = module.cognitive-openai.id
  description = "cognitive account openai id"
}

output "cognitive_openai_name" {
  value       = module.cognitive-openai.name
  description = "cognitive account openai name"
}

output "cognitive_openai_sku" {
  value       = module.cognitive-openai.sku_name
  description = "cognitive account openai sku"
}

output "cognitive_openai_endpoint" {
  value       = module.cognitive-openai.endpoint
  description = "cognitive account openai endpoint"
}
