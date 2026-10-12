output "issuing_disputes_id" {
  description = "Map of id values across all issuing_disputes, keyed the same as var.issuing_disputes except keys with no id are omitted"
  value       = { for k, v in stripe_issuing_dispute.issuing_disputes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "issuing_disputes_amount" {
  description = "Map of amount values across all issuing_disputes, keyed the same as var.issuing_disputes except keys with no amount are omitted"
  value       = { for k, v in stripe_issuing_dispute.issuing_disputes : k => v.amount if v.amount != null }
}
output "issuing_disputes_created" {
  description = "Map of created values across all issuing_disputes, keyed the same as var.issuing_disputes except keys with no created are omitted"
  value       = { for k, v in stripe_issuing_dispute.issuing_disputes : k => v.created if v.created != null }
}
output "issuing_disputes_currency" {
  description = "Map of currency values across all issuing_disputes, keyed the same as var.issuing_disputes except keys with no currency are omitted"
  value       = { for k, v in stripe_issuing_dispute.issuing_disputes : k => v.currency if v.currency != null && length(v.currency) > 0 }
}
output "issuing_disputes_evidence" {
  description = "Map of evidence values across all issuing_disputes, keyed the same as var.issuing_disputes except keys with no evidence are omitted"
  value       = { for k, v in stripe_issuing_dispute.issuing_disputes : k => v.evidence if v.evidence != null && length(v.evidence) > 0 }
}
output "issuing_disputes_livemode" {
  description = "Map of livemode values across all issuing_disputes, keyed the same as var.issuing_disputes except keys with no livemode are omitted"
  value       = { for k, v in stripe_issuing_dispute.issuing_disputes : k => v.livemode if v.livemode != null }
}
output "issuing_disputes_loss_reason" {
  description = "Map of loss_reason values across all issuing_disputes, keyed the same as var.issuing_disputes except keys with no loss_reason are omitted"
  value       = { for k, v in stripe_issuing_dispute.issuing_disputes : k => v.loss_reason if v.loss_reason != null && length(v.loss_reason) > 0 }
}
output "issuing_disputes_metadata" {
  description = "Map of metadata values across all issuing_disputes, keyed the same as var.issuing_disputes except keys with no metadata are omitted"
  value       = { for k, v in stripe_issuing_dispute.issuing_disputes : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "issuing_disputes_object" {
  description = "Map of object values across all issuing_disputes, keyed the same as var.issuing_disputes except keys with no object are omitted"
  value       = { for k, v in stripe_issuing_dispute.issuing_disputes : k => v.object if v.object != null && length(v.object) > 0 }
}
output "issuing_disputes_status" {
  description = "Map of status values across all issuing_disputes, keyed the same as var.issuing_disputes except keys with no status are omitted"
  value       = { for k, v in stripe_issuing_dispute.issuing_disputes : k => v.status if v.status != null && length(v.status) > 0 }
}
output "issuing_disputes_transaction" {
  description = "Map of transaction values across all issuing_disputes, keyed the same as var.issuing_disputes except keys with no transaction are omitted"
  value       = { for k, v in stripe_issuing_dispute.issuing_disputes : k => v.transaction if v.transaction != null && length(v.transaction) > 0 }
}
output "issuing_disputes_treasury" {
  description = "Map of treasury values across all issuing_disputes, keyed the same as var.issuing_disputes except keys with no treasury are omitted"
  value       = { for k, v in stripe_issuing_dispute.issuing_disputes : k => v.treasury if v.treasury != null && length(v.treasury) > 0 }
}

