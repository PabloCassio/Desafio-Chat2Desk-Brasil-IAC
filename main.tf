terraform {
    required_version = "~> 0.15.0"

    required_providers {
    digitalocean = {
    source = "digitalocean/digitalocean"
    version = "~> 2.0"
        }      
    }
}

provider "digitalocean" {
    token = var.token_api
}

module "cluster_kubernetes" {
    source = "./modules/k8s_cluster_module"
    clucluster_name = "chat2desk_cluster"
    node_pool_name = "chat2desk_node"
}