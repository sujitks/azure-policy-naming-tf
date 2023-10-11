variable "management_group_id" {
  type        = string
  description = "id of management group where policy is created and assigned"
}
variable "location" {
  description = "Managed identities must be created in a location."
  type        = string
  default     = "uksouth"
}