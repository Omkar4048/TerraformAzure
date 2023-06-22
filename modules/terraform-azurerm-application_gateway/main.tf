resource "azurerm_application_gateway" "app_gateway" {
  name                = var.app_gateway_name
  resource_group_name = var.resource_group_name
  location            = var.location
  enable_http2 = var.enable_http2

  sku {
    name     = var.sku_name
    tier     = var.tier
    capacity = var.capacity
  }
  gateway_ip_configuration {
    name      = "${var.app_gateway_name}-gipconf"
    subnet_id = var.frontend_subnet_id
  }
  frontend_port {
    name = var.frontend_port_name
    port = var.frontend_port
  }
  frontend_ip_configuration {
    name                 = "${var.app_gateway_name}-fipconf"
#    public_ip_address_id = var.public_ip_id#azurerm_public_ip.example.id
    subnet_id = var.frontend_subnet_id
    private_ip_address = var.private_ip_address
    private_ip_address_allocation = var.private_ip_address_allocation
  }
  dynamic "backend_address_pool" {
    for_each = var.backend_address_pool
    content {
      name = backend_address_pool.value["name"]
    }
  }
  dynamic "backend_http_settings" {
    for_each = var.backend_http_settings
    content {
      name                  = backend_http_settings.value["name"]
      cookie_based_affinity = var.cookie_based_affinity
      path                  = backend_http_settings.value["path"]
      port                  = backend_http_settings.value["port"]
      protocol              = backend_http_settings.value["protocol"]
      request_timeout       = backend_http_settings.value["request_timeout"]
    }
  }

  dynamic "http_listener" {
    for_each = var.http_listener
    content {
      name                           = http_listener.value["listener_name"]
      frontend_ip_configuration_name = http_listener.value["frontend_ip_configuration_name"]
      frontend_port_name             = http_listener.value["frontend_port_name"]
      protocol                       = http_listener.value["protocol"]
    }
  }
  dynamic "request_routing_rule" {
    for_each = var.request_routing_rule
    content {
      name                       = request_routing_rule.value["request_routing_rule_name"]
      rule_type                  = request_routing_rule.value["rule_type"]
      http_listener_name         = request_routing_rule.value["listener_name"]
      backend_address_pool_name  = request_routing_rule.value["backend_address_pool_name"]
      backend_http_settings_name = request_routing_rule.value["http_setting_name"]
    }
  }
  dynamic "probe" {
    for_each = var.probe
    content {
      name  = probe.value["name"]
      protocol = probe.value["protocol"]
      host = probe.value["host"]
      path = probe.value["path"]
      interval = probe.value["interval"]
      timeout = probe.value["timeout"]
      unhealthy_threshold = probe.value["unhealthy_threshold"]
      port = probe.value["port"]
    }
  }
  dynamic "ssl_profile" {
    for_each = var.ssl_profile
    content {
    name = ssl_profile_name.value["name"]
    ssl_policy {
        policy_type = ssl_profile.value["policy_type"]
        cipher_suites = ssl_profile.value["cipher_suites"]
        min_protocol_version = ssl_profile.value["min_protocol_version"]
      }
    } 
  }
}
