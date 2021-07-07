resource "google_pubsub_topic" "first_topic" {
  name = var.pubsub_topic[0]
}

resource "google_pubsub_subscription" "first_subscription" {
  name  = var.pubsub_subscription[0]
  topic = google_pubsub_topic.first_topic.name
}

