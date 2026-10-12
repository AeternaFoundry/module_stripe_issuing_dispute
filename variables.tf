variable "issuing_disputes" {
  description = <<EOT
Map of issuing_disputes, attributes below
Optional:
    - amount
    - evidence
    - metadata
    - transaction
    - treasury
EOT

  type = map(object({
    amount = optional(number)
    evidence = optional(object({
      canceled = optional(object({
        additional_documentation     = optional(string)
        canceled_at                  = optional(number)
        cancellation_policy_provided = optional(bool)
        cancellation_reason          = optional(string)
        expected_at                  = optional(number)
        explanation                  = optional(string)
        product_description          = optional(string)
        product_type                 = optional(string)
        return_status                = optional(string)
        returned_at                  = optional(number)
      }))
      duplicate = optional(object({
        additional_documentation = optional(string)
        card_statement           = optional(string)
        cash_receipt             = optional(string)
        check_image              = optional(string)
        explanation              = optional(string)
        original_transaction     = optional(string)
      }))
      fraudulent = optional(object({
        additional_documentation = optional(string)
        explanation              = optional(string)
      }))
      merchandise_not_as_described = optional(object({
        additional_documentation = optional(string)
        explanation              = optional(string)
        received_at              = optional(number)
        return_description       = optional(string)
        return_status            = optional(string)
        returned_at              = optional(number)
      }))
      no_valid_authorization = optional(object({
        additional_documentation = optional(string)
        explanation              = optional(string)
      }))
      not_received = optional(object({
        additional_documentation = optional(string)
        expected_at              = optional(number)
        explanation              = optional(string)
        product_description      = optional(string)
        product_type             = optional(string)
      }))
      other = optional(object({
        additional_documentation = optional(string)
        explanation              = optional(string)
        product_description      = optional(string)
        product_type             = optional(string)
      }))
      reason = optional(string)
      service_not_as_described = optional(object({
        additional_documentation = optional(string)
        canceled_at              = optional(number)
        cancellation_reason      = optional(string)
        explanation              = optional(string)
        received_at              = optional(number)
      }))
    }))
    metadata    = optional(map(string))
    transaction = optional(string)
    treasury = optional(object({
      received_debit = string
    }))
  }))
}

