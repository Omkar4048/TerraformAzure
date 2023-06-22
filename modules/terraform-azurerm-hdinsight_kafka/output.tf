output "kafka_id" {
  value = azurerm_hdinsight_kafka_cluster.kafka[*].id
}
output "kafka_name" {
  value = azurerm_hdinsight_kafka_cluster.kafka[*].name
}
output "https_endpoint" {
  value = azurerm_hdinsight_kafka_cluster.kafka[*].https_endpoint
}