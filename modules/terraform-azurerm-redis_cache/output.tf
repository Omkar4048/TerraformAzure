output "redisCache_name" {
  value = azurerm_redis_cache.myrediscache[*].name
}
output "redisCache_id" {
  value = azurerm_redis_cache.myrediscache[*].id
}
