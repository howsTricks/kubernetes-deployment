k8s_nodes = {
  "control-plane-1.k8s.cluster" = {
    target_node = "pvemr01"
    sockets     = 2
    cores       = 2
    memory      = 4096
    disk_size   = "20G"
    ipconfig0   = "ip=10.3.2.101/24,gw=10.3.2.1"
  }
  "control-plane-2.k8s.cluster" = {
    target_node = "pvemr02"
    sockets     = 2
    cores       = 2
    memory      = 4096
    disk_size   = "20G"
    ipconfig0   = "ip=10.3.2.102/24,gw=10.3.2.1"
  }
  "control-plane-3.k8s.cluster" = {
    target_node = "pvemr03"
    sockets     = 2
    cores       = 2
    memory      = 4096
    disk_size   = "20G"
    ipconfig0   = "ip=10.3.2.103/24,gw=10.3.2.1"
  }
  "worker-1.k8s.cluster" = {
    target_node = "pvemr01"
    sockets     = 2
    cores       = 6
    memory      = 12288
    disk_size   = "80G"
    ipconfig0   = "ip=10.3.2.111/24,gw=10.3.2.1"
  }
  "worker-2.k8s.cluster" = {
    target_node = "pvemr02"
    sockets     = 2
    cores       = 6
    memory      = 12288
    disk_size   = "80G"
    ipconfig0   = "ip=10.3.2.112/24,gw=10.3.2.1"
  }
  "worker-3.k8s.cluster" = {
    target_node = "pvemr03"
    sockets     = 2
    cores       = 6
    memory      = 8192
    disk_size   = "80G"
    ipconfig0   = "ip=10.3.2.113/24,gw=10.3.2.1"
  }
}