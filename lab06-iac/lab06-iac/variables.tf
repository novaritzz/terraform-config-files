variable "lastname" {
  description = "Last name prefix for naming resources"
  default     = "carpels"
  type        = string
}

variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "West Europe"
}

variable "environment" {
  description = "Environment type (staging/production)"
  type        = string
}

variable "staging_subnet_cidr" {
  description = "CIDR block for staging subnet"
  type        = string
  default     = "172.16.30.0/24"
}

variable "production_subnet_cidr" {
  description = "CIDR block for production subnet"
  type        = string
  default     = "172.16.35.0/24"
}

variable "app_service_sku" {
  description = "App Service Plan SKU"
  type        = string
  default     = "F1"
}

variable "app_service_os" {
  description = "Operating System for App Service Plan"
  type        = string
  default     = "Linux"
}

variable "runtime_version" {
  description = "Runtime version for App Service"
  type        = string
  default     = "dotnetcore|8.0"
}

variable "tls_version" {
  description = "Minimum TLS version for App Service"
  type        = string
  default     = "1.2"
}

variable "https_only" {
  description = "Enforce HTTPS-only traffic for the App Service"
  type        = bool
  default     = true
}
