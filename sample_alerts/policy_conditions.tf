terraform {
  required_version = ">= 0.14.2"
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
      version = ">= 2.14.0"
    }
  }
}

# New Relic Expert Services APM

provider "newrelic" {
  api_key = var.newrelic_api_key
  account_id = var.account_id
  region = var.region
}

resource "newrelic_alert_policy" "policy" {
  name                = var.policy_name
  incident_preference = var.incident_preference
}

resource "newrelic_alert_policy_channel" "policy_channel_links" {
  count = length(var.notification_channel_ids)
  policy_id  = newrelic_alert_policy.policy.id
  channel_ids = var.notification_channel_ids
}

resource "newrelic_alert_condition" "apm_app_condition" {
  count                 = length(var.apm_app_condition_master_entities) == 0 ? 0 : length(var.apm_app_condition_names)
  policy_id             = newrelic_alert_policy.policy.id
  name                  = element(var.apm_app_condition_names, count.index)
  type                  = "apm_app_metric"
  entities              = split(",", length(element(var.apm_app_condition_override_entities, count.index)) == 0 ? join(",",var.apm_app_condition_master_entities) : element(var.apm_app_condition_override_entities, count.index))
  metric                = element(var.apm_app_condition_metric, count.index)
  runbook_url           = element(var.apm_app_condition_runbook_urls, count.index)
  condition_scope       = "application"

  term {
    duration      = element(var.apm_app_condition_critical_durations, count.index)
    operator      = element(var.apm_app_condition_critical_operators, count.index)
    priority      = "critical"
    threshold     = element(var.apm_app_condition_critical_values, count.index)
    time_function = element(var.apm_app_condition_critical_time_functions, count.index)
  }

  term {
    duration      = element(var.apm_app_condition_warning_durations, count.index)
    operator      = element(var.apm_app_condition_warning_operators, count.index)
    priority      = "warning"
    threshold     = element(var.apm_app_condition_warning_values, count.index)
    time_function = element(var.apm_app_condition_warning_time_functions, count.index)
  }

  depends_on = [newrelic_alert_policy.policy]
}

resource "newrelic_alert_condition" "apm_kt_condition" {
  count           = length(var.apm_kt_condition_master_entities) == 0 ? 0 : length(var.apm_kt_condition_names)
  policy_id       = newrelic_alert_policy.policy.id
  name            = element(var.apm_kt_condition_names, count.index)
  type            = "apm_kt_metric"
  entities        = split(",", length(element(var.apm_kt_condition_override_entities, count.index)) == 0 ? join(",",var.apm_kt_condition_master_entities) : element(var.apm_kt_condition_override_entities, count.index))
  metric          = element(var.apm_kt_condition_metric, count.index)
  runbook_url     = element(var.apm_kt_condition_runbook_urls, count.index)

  term {
    duration      = element(var.apm_kt_condition_critical_durations, count.index)
    operator      = element(var.apm_kt_condition_critical_operators, count.index)
    priority      = "critical"
    threshold     = element(var.apm_kt_condition_critical_values, count.index)
    time_function = element(var.apm_kt_condition_critical_time_functions, count.index)
  }

  term {
    duration      = element(var.apm_kt_condition_warning_durations, count.index)
    operator      = element(var.apm_kt_condition_warning_operators, count.index)
    priority      = "warning"
    threshold     = element(var.apm_kt_condition_warning_values, count.index)
    time_function = element(var.apm_kt_condition_warning_time_functions, count.index)
  }

  depends_on = [newrelic_alert_policy.policy]
}

resource "newrelic_alert_condition" "browser_condition" {
  count           = length(var.browser_condition_master_entities) == 0 ? 0 : length(var.browser_condition_names)
  policy_id       = newrelic_alert_policy.policy.id
  name            = element(var.browser_condition_names, count.index)
  type            = "browser_metric"
  entities        = split(",", length(element(var.browser_condition_override_entities, count.index)) == 0 ? join(",",var.browser_condition_master_entities) : element(var.browser_condition_override_entities, count.index))
  metric          = element(var.browser_condition_metric_names, count.index)
  runbook_url     = element(var.browser_condition_runbook_urls, count.index)

  term {
    duration      = element(var.browser_condition_critical_durations, count.index)
    operator      = element(var.browser_condition_critical_operators, count.index)
    priority      = "critical"
    threshold     = element(var.browser_condition_critical_values, count.index)
    time_function = element(var.browser_condition_critical_time_functions, count.index)
  }

  term {
    duration      = element(var.browser_condition_warning_durations, count.index)
    operator      = element(var.browser_condition_warning_operators, count.index)
    priority      = "warning"
    threshold     = element(var.browser_condition_warning_values, count.index)
    time_function = element(var.browser_condition_warning_time_functions, count.index)
  }

  depends_on = [newrelic_alert_policy.policy]
}

resource "newrelic_nrql_alert_condition" "nrql_condition" {
  count           = length(var.nrql_condition_names)
  policy_id       = newrelic_alert_policy.policy.id
  name            = element(var.nrql_condition_names, count.index)
  runbook_url     = element(var.nrql_condition_runbook_urls, count.index)
  enabled         = element(var.nrql_condition_enabled_flags, count.index)
  violation_time_limit_seconds = 3600

  critical {
    threshold_duration    = element(var.nrql_condition_critical_durations, count.index)
    operator              = element(var.nrql_condition_critical_operators, count.index)
    threshold             = element(var.nrql_condition_critical_values, count.index)
    threshold_occurrences = element(var.nrql_condition_critical_time_functions, count.index)
  }

  /*term {
    duration      = "${element(var.nrql_condition_warning_durations, count.index)}"
    operator      = "${element(var.nrql_condition_warning_operators, count.index)}"
    priority      = "warning"
    threshold     = "${element(var.nrql_condition_warning_values, count.index)}"
    time_function = "${element(var.nrql_condition_warning_time_functions, count.index)}"
  }*/

  nrql {
    query       = element(var.nrql_condition_queries, count.index)
    evaluation_offset = element(var.nrql_condition_since_values, count.index)
  }

  value_function = element(var.nrql_condition_value_functions, count.index)
}

resource "newrelic_infra_alert_condition" "host_not_reporting_condition" {
  policy_id  = newrelic_alert_policy.policy.id
  count         = length(var.host_not_reporting_condition_names)

  name          = element(var.host_not_reporting_condition_names, count.index)
  enabled       = element(var.host_not_reporting_condition_enabled_flags, count.index)
  type          = "infra_host_not_reporting"
  where         = element(var.host_not_reporting_condition_wheres, count.index)
  critical {
    duration    = element(var.host_not_reporting_condition_critical_durations, count.index)
  }
}

resource "newrelic_infra_alert_condition" "process_running_condition" {
  policy_id  = newrelic_alert_policy.policy.id
  count         = length(var.process_running_condition_names)

  name          = element(var.process_running_condition_names, count.index)
  enabled       = element(var.process_running_condition_enabled_flags, count.index)
  type          = "infra_process_running"
  where         = element(var.process_running_condition_wheres, count.index)
  process_where = element(var.process_running_condition_process_wheres, count.index)
  comparison    = element(var.process_running_condition_comparisons, count.index)
  critical {
    duration    = element(var.process_running_condition_critical_durations, count.index)
    value       = element(var.process_running_condition_critical_values, count.index)
  }
}

resource "newrelic_infra_alert_condition" "infra_event_condition" {
  count      = length(var.infra_event_condition_names)
  policy_id  = newrelic_alert_policy.policy.id

  name          = element(var.infra_event_condition_names, count.index)
  enabled       = element(var.infra_event_condition_enabled_flags, count.index)
  type          = element(var.infra_event_condition_types, count.index)
  event         = element(var.infra_event_condition_events, count.index)
  select        = element(var.infra_event_condition_selects, count.index)
  comparison    = element(var.infra_event_condition_comparisons, count.index)
  where         = element(var.infra_event_condition_wheres, count.index)
  process_where = element(var.infra_event_condition_process_wheres, count.index)

  critical {
    duration      = element(var.infra_event_condition_critical_durations, count.index)
    value         = element(var.infra_event_condition_critical_values, count.index)
    time_function = element(var.infra_event_condition_critical_time_functions, count.index)
  }

  warning {
    duration      = element(var.infra_event_condition_warning_durations, count.index)
    value         = element(var.infra_event_condition_warning_values, count.index)
    time_function = element(var.infra_event_condition_warning_time_functions, count.index)
  }
}

resource "newrelic_infra_alert_condition" "integration_condition" {
  count      = length(var.integration_condition_names)
  policy_id  = newrelic_alert_policy.policy.id

  name       = element(var.integration_condition_names, count.index)
  enabled    = element(var.integration_condition_enabled_flags, count.index)
  type       = "infra_metric"
  comparison = element(var.integration_condition_comparisons, count.index)
  where      = element(var.integration_condition_wheres, count.index)

  integration_provider = element(var.integration_providers, count.index)

  critical {
    duration      = element(var.integration_condition_critical_durations, count.index)
    value         = element(var.integration_condition_critical_values, count.index)
    time_function = element(var.integration_condition_critical_time_functions, count.index)
  }

  warning {
    duration      = element(var.integration_condition_warning_durations, count.index)
    value         = element(var.integration_condition_warning_values, count.index)
    time_function = element(var.integration_condition_warning_time_functions, count.index)
  }
}

resource "newrelic_synthetics_alert_condition" "synthetics_condition" {
  count      = length(var.synthetics_condition_names)
  policy_id  = newrelic_alert_policy.policy.id

  name          = element(var.synthetics_condition_names, count.index)
  monitor_id    = element(var.synthetics_condition_monitor_ids, count.index)
  runbook_url   = element(var.synthetics_condition_runbook_urls, count.index)
  enabled       = element(var.synthetics_condition_enabled_flags, count.index)
}
