variable "identity_providers" {
  description = <<EOT
Map of identity_providers, attributes below
Required:
    - description
    - display_name
    - issuer
    - jwks_uri
Optional:
    - identity_claim
EOT

  type = map(object({
    description    = string
    display_name   = string
    issuer         = string
    jwks_uri       = string
    identity_claim = optional(string)
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

