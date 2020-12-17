variable "newrelic_api_key" {}

variable "policy_name" {}

variable "account_id" {}

variable "region" {}

variable "incident_preference" {
  default = "PER_CONDITION_AND_TARGET"
}

variable "notification_channel_ids" {
  type = list
}

############################### APM Applications ###############################

variable "apm_app_condition_master_entities" {
  type = list
  default = []
}

variable "apm_app_condition_names" {
  type = list
  default = [
    "Apdex (Low)",
    "Error percentage (High)",
    "Response time (web) (High)",
    "Response time (background) (High)"
  ]
}

variable "apm_app_condition_override_entities" {
  type = list
  default = [
    "", # Apdex (Low)
    "", # Error percentage (High)
    "", # Response time (web) (High)
    ""  # Response time (background) (High)
  ]
}

variable "apm_app_condition_metric" {
  type = list
  default = [
    "apdex", # Apdex (Low)
    "error_percentage", # Error percentage (High)
    "response_time_web", # Response time (web) (High)
    "response_time_background" # Response time (background) (High)
  ]
}

variable "apm_app_condition_runbook_urls" {
  type = list
  default = [
    "https://docs.newrelic.com/docs/apm/new-relic-apm/apdex/apdex-measure-user-satisfaction", # Apdex (Low)
    "https://docs.newrelic.com/docs/apm/applications-menu/error-analytics/introduction-error-analytics", # Error percentage (High)
    "https://docs.newrelic.com/docs/using-new-relic/user-interface-functions/view-your-data/response-time", # Response time (web) (High)
    "https://docs.newrelic.com/docs/apm/transactions/intro-transactions/monitor-background-processes-other-non-web-transactions" # Response time (background) (High)
  ]
}

variable "apm_app_condition_critical_durations" {
  type = list
  default = [
    5, # Apdex (Low)
    5, # Error percentage (High)
    5, # Response time (web) (High)
    5  # Response time (background) (High)
  ]
}

variable "apm_app_condition_critical_operators" {
  type = list
  default = [
    "below", # Apdex (Low)
    "above", # Error percentage (High)
    "above", # Response time (web) (High)
    "above"  # Response time (background) (High)
  ]
}

variable "apm_app_condition_critical_values" {
  type = list
  default = [
    0.75, # Apdex (Low)
    10, # Error percentage (High)
    3, # Response time (web) (High)
    3 # Response time (background) (High)
  ]
}

variable "apm_app_condition_critical_time_functions" {
  type = list
  default = [
    "all", # Apdex (Low)
    "all", # Error percentage (High)
    "all", # Response time (web) (High)
    "all"  # Response time (background) (High)
  ]
}

variable "apm_app_condition_warning_durations" {
  type = list
  default = [
    5, # Apdex (Low)
    5, # Error percentage (High)
    5, # Response time (web) (High)
    5  # Response time (background) (High)
  ]
}

variable "apm_app_condition_warning_operators" {
  type = list
  default = [
    "below", # Apdex (Low)
    "above", # Error percentage (High)
    "above", # Response time (web) (High)
    "above"  # Response time (background) (High)
  ]
}

variable "apm_app_condition_warning_values" {
  type = list
  default = [
    0.8, # Apdex (Low)
    5, # Error percentage (High)
    2, # Response time (web) (High)
    3  # Response time (background) (High)
  ]
}

variable "apm_app_condition_warning_time_functions" {
  type = list
  default = [
    "all", # Apdex (Low)
    "all", # Error percentage (High)
    "all", # Response time (web) (High)
    "all"  # Response time (background) (High)
  ]
}

############################# APM Key Transactions #############################

variable "apm_kt_condition_master_entities" {
  type = list
  default = []
}

variable "apm_kt_condition_names" {
  type = list
  default = [
    "Apdex (Low)",
    "Error percentage (High)",
    "Error count (High)",
    "Response time (High)"
  ]
}

variable "apm_kt_condition_override_entities" {
  type = list
  default = [
    "", # Apdex (Low)
    "", # Error percentage (High)
    "", # Error count (High)
    ""  # Response time (High)
  ]
}

variable "apm_kt_condition_metric" {
  type = list
  default = [
    "apdex", # Apdex (Low)
    "error_percentage", # Error percentage (High)
    "error_count", # Error count (High)
    "response_time" # Response time (High)
  ]
}

variable "apm_kt_condition_runbook_urls" {
  type = list
  default = [
    "https://docs.newrelic.com/docs/apm/new-relic-apm/apdex/apdex-measure-user-satisfaction", # Apdex (Low)
    "https://docs.newrelic.com/docs/apm/applications-menu/error-analytics/introduction-error-analytics", # Error percentage (High)
    "https://docs.newrelic.com/docs/apm/applications-menu/error-analytics/introduction-error-analytics", # Error count (High)
    "https://docs.newrelic.com/docs/apm/transactions/key-transactions/introduction-key-transactions" # Response time (High)
  ]
}

variable "apm_kt_condition_critical_durations" {
  type = list
  default = [
    5, # Apdex (Low)
    5, # Error percentage (High)
    5, # Error count (High)
    5  # Response time (High)
  ]
}

variable "apm_kt_condition_critical_operators" {
  type = list
  default = [
    "below", # Apdex (Low)
    "above", # Error percentage (High)
    "above", # Error count (High)
    "above"  # Response time (High)
  ]
}

variable "apm_kt_condition_critical_values" {
  type = list
  default = [
    0.75, # Apdex (Low)
    10, # Error percentage (High)
    50, # Error count (High)
    3  # Response time (High)
  ]
}

variable "apm_kt_condition_critical_time_functions" {
  type = list
  default = [
    "all", # Apdex (Low)
    "all", # Error percentage (High)
    "all", # Error count (High)
    "all"  # Response time (High)
  ]
}

variable "apm_kt_condition_warning_durations" {
  type = list
  default = [
    5, # Apdex (Low)
    5, # Error percentage (High)
    5, # Error count (High)
    5  # Response time (High)
  ]
}

variable "apm_kt_condition_warning_operators" {
  type = list
  default = [
    "below", # Apdex (Low)
    "above", # Error percentage (High)
    "above", # Error count (High)
    "above"  # Response time (High)
  ]
}

variable "apm_kt_condition_warning_values" {
  type = list
  default = [
    0.8, # Apdex (Low)
    5, # Error percentage (High)
    25, # Error count (High)
    2  # Response time (High)
  ]
}

variable "apm_kt_condition_warning_time_functions" {
  type = list
  default = [
    "all", # Apdex (Low)
    "all", # Error percentage (High)
    "all", # Error count (High)
    "all"  # Response time (High)
  ]
}

############################# Browser Applications #############################

variable "browser_condition_master_entities" {
  type = list
  default = []
}

variable "browser_condition_names" {
  type = list
  default = [
    "End User Apdex (Low)",
    "Total page load (High)",
    "Page rendering (High)",
    "Web Application (High)",
    "DOM processing (High)",
    "Requests queuing (High)",
    "Page views with JS errors (High)",
    "AJAX response time (High)"
  ]
}

variable "browser_condition_override_entities" {
  type = list
  default = [
    "", # End User Apdex (Low)
    "", # Total page load (High)
    "", # Page rendering (High)
    "", # Web Application (High)
    "", # DOM processing (High)
    "", # Requests queuing (High)
    "", # Page views with JS errors (High)
    "", # AJAX response time (High)
  ]
}

variable "browser_condition_metric_names" {
  type = list
  default = [
    "end_user_apdex",            # End User Apdex (Low)
    "total_page_load",           # Total page load (High)
    "page_rendering",            # Page rendering (High)
    "web_application",           # Web Application (High)
    "dom_processing",            # DOM processing (High)
    "request_queuing",           # Requests queuing (High)
    "page_views_with_js_errors", # Page views with JS errors (High)
    "ajax_response_time"         # AJAX response time (High)
  ]
}

variable "browser_condition_runbook_urls" {
  type = list
  default = [
    "https://docs.newrelic.com/docs/apm/new-relic-apm/apdex/view-your-apdex-score#browser", # End User Apdex (Low)
    "https://docs.newrelic.com/docs/browser/new-relic-browser/page-load-timing-resources/page-load-timing-process", # Total page load (High)
    "https://docs.newrelic.com/docs/browser/new-relic-browser/page-load-timing-resources/page-load-timing-process", # Page rendering (High)
    "https://docs.newrelic.com/docs/browser/new-relic-browser/page-load-timing-resources/page-load-timing-process", # Web Application (High)
    "https://docs.newrelic.com/docs/browser/new-relic-browser/page-load-timing-resources/page-load-timing-process", # DOM processing (High)
    "https://docs.newrelic.com/docs/browser/new-relic-browser/page-load-timing-resources/page-load-timing-process", # Requests queuing (High)
    "https://docs.newrelic.com/docs/browser/new-relic-browser/browser-pro-features/javascript-errors-page-detect-analyze-errors", # Page views with JS errors (High)
    "https://docs.newrelic.com/docs/browser/new-relic-browser/browser-pro-features/ajax-page-identifying-time-consuming-calls"    # AJAX response time (High)
  ]
}

variable "browser_condition_critical_durations" {
  type = list
  default = [
    5, # End User Apdex (Low)
    5, # Total page load (High)
    5, # Page rendering (High)
    5, # Web Application (High)
    5, # DOM processing (High)
    5, # Requests queuing (High)
    5, # Page views with JS errors (High)
    5  # AJAX response time (High)
  ]
}

variable "browser_condition_critical_operators" {
  type = list
  default = [
    "below", # End User Apdex (Low)
    "above", # Total page load (High)
    "above", # Page rendering (High)
    "above", # Web Application (High)
    "above", # DOM processing (High)
    "above", # Requests queuing (High)
    "above", # Page views with JS errors (High)
    "above"  # AJAX response time (High)
  ]
}

variable "browser_condition_critical_values" {
  type = list
  default = [
    0.7, # End User Apdex (Low)
    10, # Total page load (High)
    5, # Page rendering (High)
    5, # Web Application (High)
    5, # DOM processing (High)
    5, # Requests queuing (High)
    2, # Page views with JS errors (High)
    5  # AJAX response time (High)
  ]
}

variable "browser_condition_critical_time_functions" {
  type = list
  default = [
    "all", # End User Apdex (Low)
    "all", # Total page load (High)
    "all", # Page rendering (High)
    "all", # Web Application (High)
    "all", # DOM processing (High)
    "all", # Requests queuing (High)
    "all", # Page views with JS errors (High)
    "all"  # AJAX response time (High)
  ]
}

variable "browser_condition_warning_durations" {
  type = list
  default = [
    5, # End User Apdex (Low)
    5, # Total page load (High)
    5, # Page rendering (High)
    5, # Web Application (High)
    5, # DOM processing (High)
    5, # Requests queuing (High)
    5, # Page views with JS errors (High)
    5  # AJAX response time (High)
  ]
}

variable "browser_condition_warning_operators" {
  type = list
  default = [
    "below", # End User Apdex (Low)
    "above", # Total page load (High)
    "above", # Page rendering (High)
    "above", # Web Application (High)
    "above", # DOM processing (High)
    "above", # Requests queuing (High)
    "above", # Page views with JS errors (High)
    "above"  # AJAX response time (High)
  ]
}

variable "browser_condition_warning_values" {
  type = list
  default = [
    0.8, # End User Apdex (Low)
    5, # Total page load (High)
    3, # Page rendering (High)
    3, # Web Application (High)
    3, # DOM processing (High)
    3, # Requests queuing (High)
    1, # Page views with JS errors (High)
    3  # AJAX response time (High)
  ]
}

variable "browser_condition_warning_time_functions" {
  type = list
  default = [
    "all", # End User Apdex (Low)
    "all", # Total page load (High)
    "all", # Page rendering (High)
    "all", # Web Application (High)
    "all", # DOM processing (High)
    "all", # Requests queuing (High)
    "all", # Page views with JS errors (High)
    "all"  # AJAX response time (High)
  ]
}

################################## NRQL ########################################

variable "nrql_condition_names" {
  type = list
  default = [
    "Transaction Durations",
    "Page View Durations",
    "AJAX Requests with 5xx Errors",
    "Synthetic Checks Failure Rate",
    "Synthetic Requests Failure Rate",
    "Synthetic Checks Failure in Multiple Locations"
  ]
}

variable "nrql_condition_runbook_urls" {
  type = list
  default = [
    "https://docs.newrelic.com/docs/insights/insights-data-sources/default-data/apm-default-events-insights", # Transaction Durations
    "https://docs.newrelic.com/docs/insights/insights-data-sources/default-data/browser-default-events-insights", # Page View Durations
    "https://docs.newrelic.com/docs/insights/insights-data-sources/default-data/browser-default-events-insights", # AJAX Requests with 5xx Errors
    "https://docs.newrelic.com/docs/insights/insights-data-sources/default-data/synthetics-default-events-insights", # Synthetic Checks Failure Rate
    "https://docs.newrelic.com/docs/insights/insights-data-sources/default-data/synthetics-default-events-insights", # Synthetic Requests Failure Rate
    "https://docs.newrelic.com/docs/insights/insights-data-sources/default-data/synthetics-default-events-insights"  # Synthetic Checks Failure in Multiple Locations
  ]
}

variable "nrql_condition_enabled_flags" {
  type = list
  default = [
    false, # Transaction Durations
    false, # Page View Durations
    false, # AJAX Requests with 5xx Errors
    false, # Synthetic Checks Failure Rate
    false, # Synthetic Requests Failure Rate
    false  # Synthetic Checks Failure in Multiple Locations
  ]
}

variable "nrql_condition_critical_durations" {
  type = list
  default = [
    60,  # Transaction Durations
    60,  # Page View Durations
    60,  # AJAX Requests with 5xx Errors
    60,  # Synthetic Checks Failure Rate
    60,  # Synthetic Requests Failure Rate
    60   # Synthetic Checks Failure in Multiple Locations
  ]
}

variable "nrql_condition_critical_operators" {
  type = list
  default = [
    "above",  # Transaction Durations
    "above",  # Page View Durations
    "above",  # AJAX Requests with 5xx Errors
    "above",  # Synthetic Checks Failure Rate
    "above",  # Synthetic Requests Failure Rate
    "above"   # Synthetic Checks Failure in Multiple Locations
  ]
}

variable "nrql_condition_critical_values" {
  type = list
  default = [
    5,  # Transaction Durations
    5,  # Page View Durations
    5,  # AJAX Requests with 5xx Errors
    5,  # Synthetic Checks Failure Rate
    5,  # Synthetic Requests Failure Rate
    5   # Synthetic Checks Failure in Multiple Locations
  ]
}

variable "nrql_condition_critical_time_functions" {
  type = list
  default = [
    "all",  # Transaction Durations
    "all",  # Page View Durations
    "all",  # AJAX Requests with 5xx Errors
    "all",  # Synthetic Checks Failure Rate
    "all",  # Synthetic Requests Failure Rate
    "all"   # Synthetic Checks Failure in Multiple Locations
  ]
}

variable "nrql_condition_warning_durations" {
  type = list
  default = [
    5,  # Transaction Durations
    5,  # Page View Durations
    5,  # AJAX Requests with 5xx Errors
    5,  # Synthetic Checks Failure Rate
    5,  # Synthetic Requests Failure Rate
    5   # Synthetic Checks Failure in Multiple Locations
  ]
}

variable "nrql_condition_warning_operators" {
  type = list
  default = [
    "above",  # Transaction Durations
    "above",  # Page View Durations
    "above",  # AJAX Requests with 5xx Errors
    "above",  # Synthetic Checks Failure Rate
    "above",  # Synthetic Requests Failure Rate
    "above"   # Synthetic Checks Failure in Multiple Locations
  ]
}

variable "nrql_condition_warning_values" {
  type = list
  default = [
    3,  # Transaction Durations
    3,  # Page View Durations
    3,  # AJAX Requests with 5xx Errors
    3,  # Synthetic Checks Failure Rate
    3,  # Synthetic Requests Failure Rate
    3   # Synthetic Checks Failure in Multiple Locations
  ]
}

variable "nrql_condition_warning_time_functions" {
  type = list
  default = [
    "all",  # Transaction Durations
    "all",  # Page View Durations
    "all",  # AJAX Requests with 5xx Errors
    "all",  # Synthetic Checks Failure Rate
    "all",  # Synthetic Requests Failure Rate
    "all"   # Synthetic Checks Failure in Multiple Locations
  ]
}

variable "nrql_condition_queries" {
  type = list
  default = [
    "SELECT average(duration) FROM Transaction WHERE transactionType = 'Web'", # Transaction Durations
    "SELECT average(duration) FROM PageView", # Page View Durations
    "SELECT percentage(count(*), WHERE actionName is not null) from AjaxRequest WHERE actionName = 'AjaxError' and httpResponseCode LIKE '5%'",  # AJAX Requests with 5xx Errors
    "SELECT percentage(count(*),WHERE result = 'FAILED') FROM SyntheticCheck",  # Synthetic Checks Failure Rate
    "SELECT percentage(count(*),WHERE responseStatus != 'OK') FROM SyntheticRequest",  # Synthetic Requests Failure Rate
    "SELECT uniqueCount(location) FROM SyntheticCheck WHERE result = 'FAILED'"  # Synthetic Checks Failure in Multiple Locations
  ]
}

variable "nrql_condition_since_values" {
  type = list
  default = [
    3,  # Transaction Durations
    3,  # Page View Durations
    3,  # AJAX Requests with 5xx Errors
    3,  # Synthetic Checks Failure Rate
    3,  # Synthetic Requests Failure Rate
    3   # Synthetic Checks Failure in Multiple Locations
  ]
}

variable "nrql_condition_value_functions" {
  type = list
  default = [
    "single_value",  # Transaction Durations
    "single_value",  # Page View Durations
    "single_value",  # AJAX Requests with 5xx Errors
    "single_value",  # Synthetic Checks Failure Rate
    "single_value",  # Synthetic Requests Failure Rate
    "single_value"   # Synthetic Checks Failure in Multiple Locations
  ]
}

##################### Infrastructure Hosts Not Reporting #######################

variable "host_not_reporting_condition_names" {
  type = list
  default = [
    "Host Not Reporting"
  ]
}

variable "host_not_reporting_condition_runbook_urls" {
  type = list
  default = [
    "https://docs.newrelic.com/docs/infrastructure/new-relic-infrastructure/infrastructure-alert-conditions/create-infrastructure-host-not-reporting-condition" # Host Not Reporting
  ]
}

variable "host_not_reporting_condition_enabled_flags" {
  type = list
  default = [
    false # Host Not Reporting
  ]
}

variable "host_not_reporting_condition_types" {
  type = list
  default = [
    "infra_host_not_reporting" # Host Not Reporting
  ]
}

variable "host_not_reporting_condition_wheres" {
  type = list
  default = [
    "(`hostname` LIKE '%frontend%')" # Host Not Reporting
  ]
}

variable "host_not_reporting_condition_critical_durations" {
  type = list
  default = [
    5 # Host Not Reporting
  ]
}

####################### Infrastructure Process Running #########################

variable "process_running_condition_names" {
  type = list
  default = [
    "Process Running (High)"
  ]
}

variable "process_running_condition_runbook_urls" {
  type = list
  default = [
    "https://docs.newrelic.com/docs/infrastructure/new-relic-infrastructure/infrastructure-alert-conditions/alert-infrastructure-processes" # Process Running (High)
  ]
}

variable "process_running_condition_enabled_flags" {
  type = list
  default = [
    false # Process Running (High)
  ]
}

variable "process_running_condition_types" {
  type = list
  default = [
    "infra_process_running" # Process Running (High)
  ]
}

variable "process_running_condition_wheres" {
  type = list
  default = [
    "" # Process Running (High)
  ]
}

variable "process_running_condition_process_wheres" {
  type = list
  default = [
    "" # Process Running (High)
  ]
}

variable "process_running_condition_comparisons" {
  type = list
  default = [
    "above" # Process Running (High)
  ]
}

variable "process_running_condition_critical_durations" {
  type = list
  default = [
    5 # Process Running (High)
  ]
}

variable "process_running_condition_critical_values" {
  type = list
  default = [
    100 # Process Running (High)
  ]
}

########################### Infrastructure Events ##############################

variable "infra_event_condition_names" {
  type = list
  default = [
    "System CPU Usage (High)",
    "System Memory Usage (High)",
    "Storage Disk Usage (High)",
    "Network Receive Errors Per Second (High)",
    "Network Transmit Errors Per Second (High)",
    "Process Memory Usage (High)"
  ]
}

variable "infra_event_condition_runbook_urls" {
  type = list
  default = [
    "https://docs.newrelic.com/docs/infrastructure/new-relic-infrastructure/infrastructure-ui-pages/infrastructure-hosts-page-measure-resource-usage",           # System CPU Usage (High)
    "https://docs.newrelic.com/docs/infrastructure/new-relic-infrastructure/infrastructure-ui-pages/infrastructure-hosts-page-measure-resource-usage",           # System Memory Usage (High)
    "https://docs.newrelic.com/docs/infrastructure/new-relic-infrastructure/infrastructure-ui-pages/infrastructure-storage-page-evaluate-disk-usage-efficiency", # Storage Disk Usage (High)
    "https://docs.newrelic.com/docs/infrastructure/new-relic-infrastructure/infrastructure-ui-pages/infrastructure-network-page-measure-compare-capacity",       # Network Receive Errors Per Second (High)
    "https://docs.newrelic.com/docs/infrastructure/new-relic-infrastructure/infrastructure-ui-pages/infrastructure-network-page-measure-compare-capacity",       # Network Transmit Errors Per Second (High)
    "https://docs.newrelic.com/docs/infrastructure/new-relic-infrastructure/data-instrumentation/default-infrastructure-attributes-events"                       # Process Memory Usage (High)
  ]
}

variable "infra_event_condition_enabled_flags" {
  type = list
  default = [
    false, # System CPU Usage (High)
    false, # System Memory Usage (High)
    false, # Storage Disk Usage (High)
    false, # Network Receive Errors Per Second (High)
    false, # Network Transmit Errors Per Second (High)
    false, # Process Memory Usage (High)
  ]
}

variable "infra_event_condition_types" {
  type = list
  default = [
    "infra_metric", # System CPU Usage (High)
    "infra_metric", # System Memory Usage (High)
    "infra_metric", # Storage Disk Usage (High)
    "infra_metric", # Network Receive Errors Per Second (High)
    "infra_metric", # Network Transmit Errors Per Second (High)
    "infra_metric"  # Process Memory Usage (High)
  ]
}

variable "infra_event_condition_events" {
  type = list
  default = [
    "SystemSample",  # System CPU Usage (High)
    "SystemSample",  # System Memory Usage (High)
    "StorageSample", # Storage Disk Usage (High)
    "NetworkSample", # Network Receive Errors Per Second (High)
    "NetworkSample", # Network Transmit Errors Per Second (High)
    "ProcessSample"  # Process Memory Usage (High)
  ]
}

variable "infra_event_condition_selects" {
  type = list
  default = [
    "cpuPercent",              # System CPU Usage (High)
    "memoryUsedPercent",       # System Memory Usage (High)
    "diskUsedPercent",         # Storage Disk Usage (High)
    "receiveErrorsPerSecond",  # Network Receive Errors Per Second (High)
    "transmitErrorsPerSecond", # Network Transmit Errors Per Second (High)
    "cpuPercent"               # Process Memory Usage (High)
  ]
}

variable "infra_event_condition_comparisons" {
  type = list
  default = [
    "above", # System CPU Usage (High)
    "above", # System Memory Usage (High)
    "above", # Storage Disk Usage (High)
    "above", # Network Receive Errors Per Second (High)
    "above", # Network Transmit Errors Per Second (High)
    "above"  # Process Memory Usage (High)
  ]
}

variable "infra_event_condition_wheres" {
  type = list
  default = [
    "", # System CPU Usage (High)
    "", # System Memory Usage (High)
    "", # Storage Disk Usage (High)
    "", # Network Receive Errors Per Second (High)
    "", # Network Transmit Errors Per Second (High)
    ""  # Process Memory Usage (High)
  ]
}

variable "infra_event_condition_process_wheres" {
  type = list
  default = [
    "", # System CPU Usage (High)
    "", # System Memory Usage (High)
    "", # Storage Disk Usage (High)
    "", # Network Receive Errors Per Second (High)
    "", # Network Transmit Errors Per Second (High)
    "", # Process Memory Usage (High)
  ]
}

variable "infra_event_condition_critical_durations" {
  type = list
  default = [
    5, # System CPU Usage (High)
    5, # High Memory Usage
    5, # Storage Disk Usage (High)
    5, # Network Receive Errors Per Second (High)
    5, # Network Transmit Errors Per Second (High)
    5  # Process Memory Usage (High)
  ]
}

variable "infra_event_condition_critical_operators" {
  type = list
  default = [
    "above", # System CPU Usage (High)
    "above", # System Memory Usage (High)
    "above", # Storage Disk Usage (High)
    "above", # Network Receive Errors Per Second (High)
    "above", # Network Transmit Errors Per Second (High)
    "above"  # Process Memory Usage (High)
  ]
}

variable "infra_event_condition_critical_values" {
  type = list
  default = [
    90, # System CPU Usage (High)
    90, # System Memory Usage (High)
    90, # Storage Disk Usage (High)
    20, # Network Receive Errors Per Second (High)
    20, # Network Transmit Errors Per Second (High)
    90  # Process Memory Usage (High)
  ]
}

variable "infra_event_condition_critical_time_functions" {
  type = list
  default = [
    "all", # System CPU Usage (High)
    "all", # System Memory Usage (High)
    "all", # Storage Disk Usage (High)
    "all", # Network Receive Errors Per Second (High)
    "all", # Network Transmit Errors Per Second (High)
    "all"  # Process Memory Usage (High)
  ]
}

variable "infra_event_condition_warning_durations" {
  type = list
  default = [
    5, # System CPU Usage (High)
    5, # System Memory Usage (High)
    5, # Storage Disk Usage (High)
    5, # Network Receive Errors Per Second (High)
    5, # Network Transmit Errors Per Second (High)
    5  # Process Memory Usage (High)
  ]
}

variable "infra_event_condition_warning_operators" {
  type = list
  default = [
    "above", # System CPU Usage (High)
    "above", # System Memory Usage (High)
    "above", # Storage Disk Usage (High)
    "above", # Network Receive Errors Per Second (High)
    "above", # Network Transmit Errors Per Second (High)
    "above"  # Process Memory Usage (High)
  ]
}

variable "infra_event_condition_warning_values" {
  type = list
  default = [
    80, # System CPU Usage (High)
    80, # System Memory Usage (High)
    80, # Storage Disk Usage (High)
    10, # Network Receive Errors Per Second (High)
    10, # Network Transmit Errors Per Second (High)
    80  # Process Memory Usage (High)
  ]
}

variable "infra_event_condition_warning_time_functions" {
  type = list
  default = [
    "all", # System CPU Usage (High)
    "all", # System Memory Usage (High)
    "all", # Storage Disk Usage (High)
    "all", # Network Receive Errors Per Second (High)
    "all", # Network Transmit Errors Per Second (High)
    "all"  # Process Memory Usage (High)
  ]
}

########################### Integrations ##############################

variable "integration_condition_names" {
  type = list
  default = [
    # "ElastiCache Redis Cluster CPU Utilization (High)"
  ]
}

variable "integration_condition_enabled_flags" {
  type = list
  default = [
    "false"
  ]
}

variable "integration_condition_comparisons" {
  type = list
  default = [
    "above"
  ]
}

variable "integration_condition_wheres" {
  type = list
  default = [
    "awsRegion = 'eu-west-1'"
  ]
}

variable "integration_providers" {
  type = list
  default = [
    "ElastiCacheRedisCluster"
  ]
}

variable "integration_condition_critical_durations" {
  type = list
  default = [
    "5"
  ]
}

variable "integration_condition_critical_values" {
  type = list
  default = [
    "90"
  ]
}

variable "integration_condition_critical_time_functions" {
  type = list
  default = [
    "all"
  ]
}

variable "integration_condition_warning_durations" {
  type = list
  default = [
    "5"
  ]
}

variable "integration_condition_warning_values" {
  type = list
  default = [
    "80"
  ]
}

variable "integration_condition_warning_time_functions" {
  type = list
  default = [
    "all"
  ]
}

########################### Synthetics ##############################

variable "synthetics_condition_names" {
  type = list
  default = [
    # "Sleepy Site",
    # "My Test Monitor"
  ]
}

variable "synthetics_condition_monitor_ids" {
  type = list
  default = [
    "abcdefg-1111-9999-0000-hijklmnopqrs", # Sleepy Site
    "abcdefg-1111-9999-0000-hijklmnopqrs"  # My Test Monitor
  ]
}

variable "synthetics_condition_runbook_urls" {
  type = list
  default = [
    "https://docs.newrelic.com/docs/synthetics/new-relic-synthetics/getting-started/introduction-new-relic-synthetics", # Sleepy Site
    "https://docs.newrelic.com/docs/synthetics/new-relic-synthetics/getting-started/introduction-new-relic-synthetics"  # My Test Monitor
  ]
}

variable "synthetics_condition_enabled_flags" {
  type = list
  default = [
    "false", # Sleepy Site
    "false"  # My Test Monitor
  ]
}
