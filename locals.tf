locals {
  name = var.name == null ? "${var.names.product}-${var.names.environment}-${var.names.location}-kv" : var.name
}
