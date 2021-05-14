/*  
GCP example Terraform test.

*/


provider "google" {
  project = "My Project 38496"
  region  = "us-central1"
  zone    = "us-central1-c"
}


//  Create a VPC network.
resource "google_compute_network" "vpc_network" {
  name                    = "terraform-network"
  auto_create_subnetworks = "true"
}
