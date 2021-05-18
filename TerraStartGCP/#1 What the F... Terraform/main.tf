provider "google" {
  project = "example_project_id"
}

resource "google_storage_bucket" "storage_for_midi" {
  name          = "very_unique_name_for_midi"
  location      = "EU"
  force_destroy = true
}