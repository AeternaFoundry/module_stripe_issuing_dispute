resource "stripe_issuing_dispute" "issuing_disputes" {
  for_each = var.issuing_disputes

  amount      = each.value.amount
  evidence    = each.value.evidence
  metadata    = each.value.metadata
  transaction = each.value.transaction
  treasury    = each.value.treasury
}

