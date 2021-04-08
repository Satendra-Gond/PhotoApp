Rails.configuration.stripe = {
	publishable_key: (ENV['PUBLISHABLE_KEY'] ||= Rails.application.credentials.stripe[:PUBLISHABLE_KEY]),
	secret_key: (ENV['SECRET_KEY'] ||= Rails.application.credentials.stripe[:SECRET_KEY])
}
Stripe.api_key = Rails.configuration.stripe[:secret_key]
