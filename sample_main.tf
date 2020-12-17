# This will create an alert policy
module "my_module" {
  source = "./sample_alerts" # This should point to the alert package
  policy_name = "My Team's Policy" # Specify an alert policy name, usually the development team or app family
  newrelic_api_key = "<YOUR API KEY>"  # Specify an Admin API Key
  account_id = "<YOUR ACCOUNT ID>" # Specify an Account ID
  region = "<YOUR DATA CENTER>" # US or EU
  notification_channel_ids = [9999999] # Specify one or more notification channel IDs
  apm_app_condition_master_entities = [999999999] # Specify zero or more APM application IDs
  apm_kt_condition_master_entities = [] # Specify zero or more APM key transaction IDs
  browser_condition_master_entities = [] # Specify zero or more Browser application IDs
}

# This will create another alert policy that targets a different group of APM applications
# Note that while the APM app alert conditions will be the same as in the first policy, we elect to override the critical thresholds in this example.
# See var.tf for all the variables that can be overriden.
module "another_module" {
  source = "./sample_alerts"
  policy_name = "Another Team's Policy"
  newrelic_api_key = "<YOUR API KEY>"
  account_id = "<YOUR ACCOUNT ID>"
  region = "<YOUR DATA CENTER>" # US or EU
  notification_channel_ids = [9999999]
  apm_app_condition_master_entities = [999999999]
  apm_app_condition_critical_values = [ # Override critical thresholds for APM App alert conditions
    0.65, # Apdex (Low)
    2, # Error percentage (High)
    3, # Response time (web) (High)
    3 # Response time (background) (High)
  ]
}
