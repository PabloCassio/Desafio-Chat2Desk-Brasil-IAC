 /// Variáveis do Cluster
variable "cluster_name" {
    type = string
    description = "Essa variável determina se o cluster vai ser automaticamente escalável ou não. Por padrão verdadeiro."
  
}

variable "cluster_region" {
    type = string
    default = "ncy1"
    description = "Essa variável determina qual será a região que o cluster estará alocado. Por padrão em New York City 1"
  
}

variable "cluster_version" {
    type = string
    default = "1.27.2-do.0"
    description = "Essa variável determina qual será a versão do DigitalOcean Kubernetes no cluster. Por padrão a versão é 1.27.2-do.0"
  
}

/// Variáveis dos nós
variable "auto_scale" {
    type = bool
    default = true
    description = "Essa variável determina se o cluster vai ser automaticamente escalável ou não. Por padrão verdadeiro."
  
}

variable "node_pool_name" {
    type = string
    description = "Essa variável determina qual será o nome do(s) nó(s)"
  
}

variable "node_pool_size" {
    type = string
    default = "s-1vcpu-1gb"
    description = "Essa variável determina qual será a disponibilização de vcpus e memória RAM dos seus nós. Por padrão os nós irão conter 1vcpu e 1GB de memória RAM."
  
  
}

variable "min_nodes" {
    type = number
    default = 1
    description = "Essa variável determina o número mínimo de nós que o seu cluster deverá conter, por padrão será 1"
  
}

variable "max_nodes" {
    type = number
    default = 3
    description = " Essa variável determina o número máximo de nós que o seu cluster poderá conter, por padrão será 3"
}
