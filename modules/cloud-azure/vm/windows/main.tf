resource "azurerm_public_ip" "create_public_ip" {
  count = var.vm_private == false ? 1 : 0

  name                = lower("pub-ip-${var.vm_name}")
  resource_group_name = var.vm_rg_name
  location            = var.vm_rg_location
  allocation_method   = "Static"

  tags = var.tags

  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}

resource "azurerm_network_interface" "create_interface" {
  # checkov:skip=CKV_AZURE_119: ADD REASON
  name                 = lower("nic-${var.vm_name}")
  location             = var.vm_rg_location
  resource_group_name  = var.vm_rg_name
  enable_ip_forwarding = false

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet_id 
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = var.vm_private == false ? azurerm_public_ip.create_public_ip[0].id : null
  }

}

resource "azurerm_network_security_group" "create_nsg" {
  name                = var.vm_private == false ? lower("nsg-${var.vm_name}-pub") : lower("nsg-${var.vm_name}-priv")
  location            = var.vm_rg_location
  resource_group_name = var.vm_rg_name

  dynamic "security_rule" {
    for_each = var.rules_nsg

    content {
      name                       = security_rule.value.name
      priority                   = security_rule.value.priority
      direction                  = security_rule.value.direction
      access                     = security_rule.value.access
      protocol                   = security_rule.value.protocol
      source_port_range          = security_rule.value.source_port_range
      destination_port_range     = security_rule.value.destination_port_range
      source_address_prefix      = security_rule.value.source_address_prefix
      destination_address_prefix = security_rule.value.destination_address_prefix

    }
  }

  tags = var.tags
  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}

resource "azurerm_network_interface_security_group_association" "associate_nsg_nic" {
  network_interface_id      = azurerm_network_interface.create_interface.id
  network_security_group_id = azurerm_network_security_group.create_nsg.id
}

resource "azurerm_windows_virtual_machine" "create_vm" {
  name                            = lower("vm-${var.vm_name}")
  computer_name                   = var.computer_name
  resource_group_name             = var.vm_rg_name
  location                        = var.vm_rg_location
  size                            = var.vm_tier
  admin_username                  = var.vm_user
  admin_password                  = var.vm_pass

  network_interface_ids = [
    azurerm_network_interface.create_interface.id
  ]

  os_disk {
    caching              = var.caching
    storage_account_type = var.storage_account_type
    disk_size_gb         = var.vm_disk_size
  }

  source_image_reference {
    publisher = var.publisher
    offer     = var.offer
    sku       = var.sku
    version   = var.os_image_version
  }

  custom_data = var.custom_data
  
  tags = var.tags

  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}