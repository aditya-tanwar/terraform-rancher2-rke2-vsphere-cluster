provider "rancher2" {
    api_url = var.api_url
    insecure = var.insecure_connection
    access_key = var.access_key
    secret_key = var.secret_key
}