Rails.configuration.stripe = {
  :publishable_key =>'pk_test_Vmbjsqqyx70EPIZdycwdSUiy',
  :secret_key      =>'sk_test_ruplGlvtZNqMY0GnVonuD0Um'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]