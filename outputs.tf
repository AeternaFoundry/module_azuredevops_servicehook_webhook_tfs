output "servicehook_webhook_tfs_id" {
  description = "Map of id values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => v.id }
}
output "servicehook_webhook_tfs_accept_untrusted_certs" {
  description = "Map of accept_untrusted_certs values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => v.accept_untrusted_certs }
}
output "servicehook_webhook_tfs_basic_auth_password" {
  description = "Map of basic_auth_password values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => v.basic_auth_password }
  sensitive   = true
}
output "servicehook_webhook_tfs_basic_auth_username" {
  description = "Map of basic_auth_username values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => v.basic_auth_username }
}
output "servicehook_webhook_tfs_build_completed" {
  description = "Map of build_completed values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => one(v.build_completed) }
}
output "servicehook_webhook_tfs_detailed_messages_to_send" {
  description = "Map of detailed_messages_to_send values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => v.detailed_messages_to_send }
}
output "servicehook_webhook_tfs_git_pull_request_commented" {
  description = "Map of git_pull_request_commented values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => one(v.git_pull_request_commented) }
}
output "servicehook_webhook_tfs_git_pull_request_created" {
  description = "Map of git_pull_request_created values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => one(v.git_pull_request_created) }
}
output "servicehook_webhook_tfs_git_pull_request_merge_attempted" {
  description = "Map of git_pull_request_merge_attempted values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => one(v.git_pull_request_merge_attempted) }
}
output "servicehook_webhook_tfs_git_pull_request_updated" {
  description = "Map of git_pull_request_updated values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => one(v.git_pull_request_updated) }
}
output "servicehook_webhook_tfs_git_push" {
  description = "Map of git_push values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => one(v.git_push) }
}
output "servicehook_webhook_tfs_http_headers" {
  description = "Map of http_headers values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => v.http_headers }
}
output "servicehook_webhook_tfs_messages_to_send" {
  description = "Map of messages_to_send values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => v.messages_to_send }
}
output "servicehook_webhook_tfs_project_id" {
  description = "Map of project_id values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => v.project_id }
}
output "servicehook_webhook_tfs_repository_created" {
  description = "Map of repository_created values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => one(v.repository_created) }
}
output "servicehook_webhook_tfs_repository_deleted" {
  description = "Map of repository_deleted values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => one(v.repository_deleted) }
}
output "servicehook_webhook_tfs_repository_forked" {
  description = "Map of repository_forked values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => one(v.repository_forked) }
}
output "servicehook_webhook_tfs_repository_renamed" {
  description = "Map of repository_renamed values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => one(v.repository_renamed) }
}
output "servicehook_webhook_tfs_repository_status_changed" {
  description = "Map of repository_status_changed values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => one(v.repository_status_changed) }
}
output "servicehook_webhook_tfs_resource_details_to_send" {
  description = "Map of resource_details_to_send values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => v.resource_details_to_send }
}
output "servicehook_webhook_tfs_resource_version" {
  description = "Map of resource_version values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => v.resource_version }
}
output "servicehook_webhook_tfs_service_connection_created" {
  description = "Map of service_connection_created values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => one(v.service_connection_created) }
}
output "servicehook_webhook_tfs_service_connection_updated" {
  description = "Map of service_connection_updated values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => one(v.service_connection_updated) }
}
output "servicehook_webhook_tfs_tfvc_checkin" {
  description = "Map of tfvc_checkin values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => one(v.tfvc_checkin) }
}
output "servicehook_webhook_tfs_url" {
  description = "Map of url values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => v.url }
}
output "servicehook_webhook_tfs_work_item_commented" {
  description = "Map of work_item_commented values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => one(v.work_item_commented) }
}
output "servicehook_webhook_tfs_work_item_created" {
  description = "Map of work_item_created values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => one(v.work_item_created) }
}
output "servicehook_webhook_tfs_work_item_deleted" {
  description = "Map of work_item_deleted values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => one(v.work_item_deleted) }
}
output "servicehook_webhook_tfs_work_item_restored" {
  description = "Map of work_item_restored values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => one(v.work_item_restored) }
}
output "servicehook_webhook_tfs_work_item_updated" {
  description = "Map of work_item_updated values across all servicehook_webhook_tfs, keyed the same as var.servicehook_webhook_tfs"
  value       = { for k, v in azuredevops_servicehook_webhook_tfs.servicehook_webhook_tfs : k => one(v.work_item_updated) }
}

