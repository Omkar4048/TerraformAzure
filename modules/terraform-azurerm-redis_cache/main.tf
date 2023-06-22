resource "azurerm_redis_cache" "myrediscache" {
  name                = var.redis_cache_name
  resource_group_name   = var.resource_group_name
  location            = var.location
  public_network_access_enabled = var.public_enabled
  capacity            = var.redis_cache_capacity
  family              = var.redis_cache_family
  sku_name            = var.redis_cache_tier
  enable_non_ssl_port = var.redis_cache_enable_non_ssl_port
  minimum_tls_version = var.redis_cache_minimum_tls_version

  redis_configuration {
  maxmemory_reserved = var.redis_cache_maxmemory_reserved
  maxmemory_delta    = var.redis_cache_maxmemory_delta
  maxmemory_policy   = var.redis_cache_maxmemory_policy
 }
  tags                = var.redisCache_tags
  lifecycle {
    ignore_changes = [
      # Ignore changes to tags, e.g. because a management agent
      # updates these based on some ruleset managed elsewhere.
      tags, redis_configuration
    ]
  }
}
