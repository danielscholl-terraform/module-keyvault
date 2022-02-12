locals {
  name = (var.name != null ? var.name : "${var.names.product}${var.names.environment}")
}
