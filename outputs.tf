output "identity_providers_id" {
  description = "Map of id values across all identity_providers, keyed the same as var.identity_providers except keys with no id are omitted"
  value       = { for k, v in confluent_identity_provider.identity_providers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "identity_providers_description" {
  description = "Map of description values across all identity_providers, keyed the same as var.identity_providers except keys with no description are omitted"
  value       = { for k, v in confluent_identity_provider.identity_providers : k => v.description if v.description != null && length(v.description) > 0 }
}
output "identity_providers_display_name" {
  description = "Map of display_name values across all identity_providers, keyed the same as var.identity_providers except keys with no display_name are omitted"
  value       = { for k, v in confluent_identity_provider.identity_providers : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "identity_providers_identity_claim" {
  description = "Map of identity_claim values across all identity_providers, keyed the same as var.identity_providers except keys with no identity_claim are omitted"
  value       = { for k, v in confluent_identity_provider.identity_providers : k => v.identity_claim if v.identity_claim != null && length(v.identity_claim) > 0 }
}
output "identity_providers_issuer" {
  description = "Map of issuer values across all identity_providers, keyed the same as var.identity_providers except keys with no issuer are omitted"
  value       = { for k, v in confluent_identity_provider.identity_providers : k => v.issuer if v.issuer != null && length(v.issuer) > 0 }
}
output "identity_providers_jwks_uri" {
  description = "Map of jwks_uri values across all identity_providers, keyed the same as var.identity_providers except keys with no jwks_uri are omitted"
  value       = { for k, v in confluent_identity_provider.identity_providers : k => v.jwks_uri if v.jwks_uri != null && length(v.jwks_uri) > 0 }
}

