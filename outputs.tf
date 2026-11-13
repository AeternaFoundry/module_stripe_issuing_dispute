output "issuing_disputes_id" {
  description = "Map of id values across all issuing_disputes, keyed the same as var.issuing_disputes"
  value       = { for k, v in stripe_issuing_dispute.issuing_disputes : k => v.id }
}
output "issuing_disputes_amount" {
  description = "Map of amount values across all issuing_disputes, keyed the same as var.issuing_disputes"
  value       = { for k, v in stripe_issuing_dispute.issuing_disputes : k => v.amount }
}
output "issuing_disputes_created" {
  description = "Map of created values across all issuing_disputes, keyed the same as var.issuing_disputes"
  value       = { for k, v in stripe_issuing_dispute.issuing_disputes : k => v.created }
}
output "issuing_disputes_currency" {
  description = "Map of currency values across all issuing_disputes, keyed the same as var.issuing_disputes"
  value       = { for k, v in stripe_issuing_dispute.issuing_disputes : k => v.currency }
}
output "issuing_disputes_evidence" {
  description = "Map of evidence values across all issuing_disputes, keyed the same as var.issuing_disputes"
  value       = { for k, v in stripe_issuing_dispute.issuing_disputes : k => v.evidence }
}
output "issuing_disputes_livemode" {
  description = "Map of livemode values across all issuing_disputes, keyed the same as var.issuing_disputes"
  value       = { for k, v in stripe_issuing_dispute.issuing_disputes : k => v.livemode }
}
output "issuing_disputes_loss_reason" {
  description = "Map of loss_reason values across all issuing_disputes, keyed the same as var.issuing_disputes"
  value       = { for k, v in stripe_issuing_dispute.issuing_disputes : k => v.loss_reason }
}
output "issuing_disputes_metadata" {
  description = "Map of metadata values across all issuing_disputes, keyed the same as var.issuing_disputes"
  value       = { for k, v in stripe_issuing_dispute.issuing_disputes : k => v.metadata }
}
output "issuing_disputes_object" {
  description = "Map of object values across all issuing_disputes, keyed the same as var.issuing_disputes"
  value       = { for k, v in stripe_issuing_dispute.issuing_disputes : k => v.object }
}
output "issuing_disputes_status" {
  description = "Map of status values across all issuing_disputes, keyed the same as var.issuing_disputes"
  value       = { for k, v in stripe_issuing_dispute.issuing_disputes : k => v.status }
}
output "issuing_disputes_transaction" {
  description = "Map of transaction values across all issuing_disputes, keyed the same as var.issuing_disputes"
  value       = { for k, v in stripe_issuing_dispute.issuing_disputes : k => v.transaction }
}
output "issuing_disputes_treasury" {
  description = "Map of treasury values across all issuing_disputes, keyed the same as var.issuing_disputes"
  value       = { for k, v in stripe_issuing_dispute.issuing_disputes : k => v.treasury }
}

