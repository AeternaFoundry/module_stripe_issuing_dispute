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
  validation {
    condition = alltrue([
      for k, v in var.issuing_disputes : (
        v.evidence == null || (v.evidence.canceled == null || (v.evidence.canceled.product_type == null || (contains(["merchandise", "service"], v.evidence.canceled.product_type))))
      )
    ])
    error_message = "must be one of: \"merchandise\", \"service\""
  }
  validation {
    condition = alltrue([
      for k, v in var.issuing_disputes : (
        v.evidence == null || (v.evidence.canceled == null || (v.evidence.canceled.return_status == null || (contains(["merchant_rejected", "successful"], v.evidence.canceled.return_status))))
      )
    ])
    error_message = "must be one of: \"merchant_rejected\", \"successful\""
  }
  validation {
    condition = alltrue([
      for k, v in var.issuing_disputes : (
        v.evidence == null || (v.evidence.merchandise_not_as_described == null || (v.evidence.merchandise_not_as_described.return_status == null || (contains(["merchant_rejected", "successful"], v.evidence.merchandise_not_as_described.return_status))))
      )
    ])
    error_message = "must be one of: \"merchant_rejected\", \"successful\""
  }
  validation {
    condition = alltrue([
      for k, v in var.issuing_disputes : (
        v.evidence == null || (v.evidence.not_received == null || (v.evidence.not_received.product_type == null || (contains(["merchandise", "service"], v.evidence.not_received.product_type))))
      )
    ])
    error_message = "must be one of: \"merchandise\", \"service\""
  }
  validation {
    condition = alltrue([
      for k, v in var.issuing_disputes : (
        v.evidence == null || (v.evidence.other == null || (v.evidence.other.product_type == null || (contains(["merchandise", "service"], v.evidence.other.product_type))))
      )
    ])
    error_message = "must be one of: \"merchandise\", \"service\""
  }
  validation {
    condition = alltrue([
      for k, v in var.issuing_disputes : (
        v.evidence == null || (v.evidence.reason == null || (contains(["canceled", "duplicate", "fraudulent", "merchandise_not_as_described", "no_valid_authorization", "not_received", "other", "service_not_as_described"], v.evidence.reason)))
      )
    ])
    error_message = "must be one of: \"canceled\", \"duplicate\", \"fraudulent\", \"merchandise_not_as_described\", \"no_valid_authorization\", \"not_received\", \"other\", \"service_not_as_described\""
  }
}

