resource "confluent_identity_provider" "identity_providers" {
  for_each = var.identity_providers

  description    = each.value.description
  display_name   = each.value.display_name
  issuer         = each.value.issuer
  jwks_uri       = each.value.jwks_uri
  identity_claim = each.value.identity_claim
}

