// Provider and API related variables 

variable "cloud_credential" {
  type = string
}

variable "api_url" {
  type = string
}

variable "access_key" {
  type = string
}

variable "secret_key" {
  type = string
}

variable "insecure_connection" {
  type = bool
}

// Cluster based variables

variable "cluster_name" {
  type = string
}

variable "kubernetes_version" {
  type = string
}

variable "enable_network_policy" {
  type    = bool
  default = false
}

variable "default_cluster_role_for_project_members" {
  type = string
}

variable "cni" {
  type        = string
  description = "Name of the cni to be used"
  default     = "calico"
}

variable "node" {
  description = "Properties for MachinePool node types"
  type = object({
    ingress = map(any)
    ctl_plane = map(any)
    worker    = map(any)
    #storage  = map(any)
  })
}

variable "vsphere_env" {
  description = "Variables for vSphere environment"
  type = object({
    cloud_image_name = string
    datacenter       = string
    datastore        = string
    vm_network       = list(string)
    folder           = string
    pool             = string
  })
}


variable "labels" {
        default = {
        #"storage" = {"dedicated" = "storage", "node.longhorn.io/create-default-disk" = "true"}
        "ingress" = {"dedicated" = "ingress"}
        }
}