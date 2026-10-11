output "servicehook_webhook_tfs_id" {
  description = "Map of id values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs except keys with no id are omitted"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "servicehook_webhook_tfs_accept_untrusted_certs" {
  description = "Map of accept_untrusted_certs values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs except keys with no accept_untrusted_certs are omitted"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => v.accept_untrusted_certs if v.accept_untrusted_certs != null }
}
output "servicehook_webhook_tfs_basic_auth_password" {
  description = "Map of basic_auth_password values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs except keys with no basic_auth_password are omitted"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => v.basic_auth_password if v.basic_auth_password != null && length(v.basic_auth_password) > 0 }
  sensitive   = true
}
output "servicehook_webhook_tfs_basic_auth_username" {
  description = "Map of basic_auth_username values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs except keys with no basic_auth_username are omitted"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => v.basic_auth_username if v.basic_auth_username != null && length(v.basic_auth_username) > 0 }
}
output "servicehook_webhook_tfs_build_completed" {
  description = "Map of build_completed values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs except keys with no build_completed are omitted"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => one(v.build_completed) if v.build_completed != null && length(v.build_completed) > 0 }
}
output "servicehook_webhook_tfs_detailed_messages_to_send" {
  description = "Map of detailed_messages_to_send values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs except keys with no detailed_messages_to_send are omitted"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => v.detailed_messages_to_send if v.detailed_messages_to_send != null && length(v.detailed_messages_to_send) > 0 }
}
output "servicehook_webhook_tfs_git_pull_request_commented" {
  description = "Map of git_pull_request_commented values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs except keys with no git_pull_request_commented are omitted"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => one(v.git_pull_request_commented) if v.git_pull_request_commented != null && length(v.git_pull_request_commented) > 0 }
}
output "servicehook_webhook_tfs_git_pull_request_created" {
  description = "Map of git_pull_request_created values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs except keys with no git_pull_request_created are omitted"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => one(v.git_pull_request_created) if v.git_pull_request_created != null && length(v.git_pull_request_created) > 0 }
}
output "servicehook_webhook_tfs_git_pull_request_merge_attempted" {
  description = "Map of git_pull_request_merge_attempted values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs except keys with no git_pull_request_merge_attempted are omitted"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => one(v.git_pull_request_merge_attempted) if v.git_pull_request_merge_attempted != null && length(v.git_pull_request_merge_attempted) > 0 }
}
output "servicehook_webhook_tfs_git_pull_request_updated" {
  description = "Map of git_pull_request_updated values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs except keys with no git_pull_request_updated are omitted"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => one(v.git_pull_request_updated) if v.git_pull_request_updated != null && length(v.git_pull_request_updated) > 0 }
}
output "servicehook_webhook_tfs_git_push" {
  description = "Map of git_push values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs except keys with no git_push are omitted"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => one(v.git_push) if v.git_push != null && length(v.git_push) > 0 }
}
output "servicehook_webhook_tfs_http_headers" {
  description = "Map of http_headers values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs except keys with no http_headers are omitted"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => v.http_headers if v.http_headers != null && length(v.http_headers) > 0 }
}
output "servicehook_webhook_tfs_messages_to_send" {
  description = "Map of messages_to_send values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs except keys with no messages_to_send are omitted"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => v.messages_to_send if v.messages_to_send != null && length(v.messages_to_send) > 0 }
}
output "servicehook_webhook_tfs_project_id" {
  description = "Map of project_id values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs except keys with no project_id are omitted"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "servicehook_webhook_tfs_repository_created" {
  description = "Map of repository_created values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs except keys with no repository_created are omitted"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => one(v.repository_created) if v.repository_created != null && length(v.repository_created) > 0 }
}
output "servicehook_webhook_tfs_repository_deleted" {
  description = "Map of repository_deleted values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs except keys with no repository_deleted are omitted"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => one(v.repository_deleted) if v.repository_deleted != null && length(v.repository_deleted) > 0 }
}
output "servicehook_webhook_tfs_repository_forked" {
  description = "Map of repository_forked values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs except keys with no repository_forked are omitted"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => one(v.repository_forked) if v.repository_forked != null && length(v.repository_forked) > 0 }
}
output "servicehook_webhook_tfs_repository_renamed" {
  description = "Map of repository_renamed values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs except keys with no repository_renamed are omitted"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => one(v.repository_renamed) if v.repository_renamed != null && length(v.repository_renamed) > 0 }
}
output "servicehook_webhook_tfs_repository_status_changed" {
  description = "Map of repository_status_changed values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs except keys with no repository_status_changed are omitted"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => one(v.repository_status_changed) if v.repository_status_changed != null && length(v.repository_status_changed) > 0 }
}
output "servicehook_webhook_tfs_resource_details_to_send" {
  description = "Map of resource_details_to_send values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs except keys with no resource_details_to_send are omitted"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => v.resource_details_to_send if v.resource_details_to_send != null && length(v.resource_details_to_send) > 0 }
}
output "servicehook_webhook_tfs_resource_version" {
  description = "Map of resource_version values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs except keys with no resource_version are omitted"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => v.resource_version if v.resource_version != null && length(v.resource_version) > 0 }
}
output "servicehook_webhook_tfs_service_connection_created" {
  description = "Map of service_connection_created values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs except keys with no service_connection_created are omitted"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => one(v.service_connection_created) if v.service_connection_created != null && length(v.service_connection_created) > 0 }
}
output "servicehook_webhook_tfs_service_connection_updated" {
  description = "Map of service_connection_updated values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs except keys with no service_connection_updated are omitted"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => one(v.service_connection_updated) if v.service_connection_updated != null && length(v.service_connection_updated) > 0 }
}
output "servicehook_webhook_tfs_tfvc_checkin" {
  description = "Map of tfvc_checkin values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs except keys with no tfvc_checkin are omitted"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => one(v.tfvc_checkin) if v.tfvc_checkin != null && length(v.tfvc_checkin) > 0 }
}
output "servicehook_webhook_tfs_url" {
  description = "Map of url values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs except keys with no url are omitted"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => v.url if v.url != null && length(v.url) > 0 }
}
output "servicehook_webhook_tfs_work_item_commented" {
  description = "Map of work_item_commented values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs except keys with no work_item_commented are omitted"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => one(v.work_item_commented) if v.work_item_commented != null && length(v.work_item_commented) > 0 }
}
output "servicehook_webhook_tfs_work_item_created" {
  description = "Map of work_item_created values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs except keys with no work_item_created are omitted"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => one(v.work_item_created) if v.work_item_created != null && length(v.work_item_created) > 0 }
}
output "servicehook_webhook_tfs_work_item_deleted" {
  description = "Map of work_item_deleted values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs except keys with no work_item_deleted are omitted"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => one(v.work_item_deleted) if v.work_item_deleted != null && length(v.work_item_deleted) > 0 }
}
output "servicehook_webhook_tfs_work_item_restored" {
  description = "Map of work_item_restored values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs except keys with no work_item_restored are omitted"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => one(v.work_item_restored) if v.work_item_restored != null && length(v.work_item_restored) > 0 }
}
output "servicehook_webhook_tfs_work_item_updated" {
  description = "Map of work_item_updated values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs except keys with no work_item_updated are omitted"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => one(v.work_item_updated) if v.work_item_updated != null && length(v.work_item_updated) > 0 }
}

