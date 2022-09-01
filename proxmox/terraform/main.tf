resource "proxmox_vm_qemu" "nodes" {
  for_each    = var.k8s_nodes
  name        = each.key
  target_node = each.value.target_node

  clone = var.clone_name

  os_type  = "cloud-init"
  sockets  = each.value.sockets
  cores    = each.value.cores
  cpu      = "host"
  memory   = each.value.memory
  scsihw   = "virtio-scsi-pci"
  bootdisk = "scsi0"

  #startup on boot of host
  onboot = true

  disk {
    size     = each.value.disk_size
    type     = "scsi"
    storage  = "local-lvm"
    iothread = 1
  }

  network {
    model  = "virtio"
    bridge = "vmbr0"
    tag    = 2
  }

  # cloud-init settings
  # adjust the ip and gateway addresses as needed
  ipconfig0 = each.value.ipconfig0
  sshkeys   = var.ssh_key_file
}
