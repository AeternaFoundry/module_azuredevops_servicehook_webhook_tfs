variable "servicehook_webhook_tfs" {
  description = <<EOT
Map of servicehook_webhook_tfs, attributes below
Required:
    - project_id
    - url
Optional:
    - accept_untrusted_certs
    - basic_auth_password
    - basic_auth_username
    - detailed_messages_to_send
    - http_headers
    - messages_to_send
    - resource_details_to_send
    - resource_version
    - build_completed (block):
        - build_status (optional)
        - definition_name (optional)
    - git_pull_request_commented (block):
        - branch (optional)
        - repository_id (optional)
    - git_pull_request_created (block):
        - branch (optional)
        - pull_request_created_by (optional)
        - pull_request_reviewers_contains (optional)
        - repository_id (optional)
    - git_pull_request_merge_attempted (block):
        - branch (optional)
        - merge_result (optional)
        - pull_request_created_by (optional)
        - pull_request_reviewers_contains (optional)
        - repository_id (optional)
    - git_pull_request_updated (block):
        - branch (optional)
        - notification_type (optional)
        - pull_request_created_by (optional)
        - pull_request_reviewers_contains (optional)
        - repository_id (optional)
    - git_push (block):
        - branch (optional)
        - pushed_by (optional)
        - repository_id (optional)
    - repository_created (block):
        - project_id (optional)
    - repository_deleted (block):
        - repository_id (optional)
    - repository_forked (block):
        - repository_id (optional)
    - repository_renamed (block):
        - repository_id (optional)
    - repository_status_changed (block):
        - repository_id (optional)
    - service_connection_created (block):
        - project_id (optional)
    - service_connection_updated (block):
        - project_id (optional)
    - tfvc_checkin (block):
        - path (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
    - work_item_commented (block):
        - area_path (optional)
        - comment_pattern (optional)
        - tag (optional)
        - work_item_type (optional)
    - work_item_created (block):
        - area_path (optional)
        - links_changed (optional)
        - tag (optional)
        - work_item_type (optional)
    - work_item_deleted (block):
        - area_path (optional)
        - tag (optional)
        - work_item_type (optional)
    - work_item_restored (block):
        - area_path (optional)
        - tag (optional)
        - work_item_type (optional)
    - work_item_updated (block):
        - area_path (optional)
        - changed_fields (optional)
        - links_changed (optional)
        - tag (optional)
        - work_item_type (optional)
EOT

  type = map(object({
    project_id                = string
    url                       = string
    accept_untrusted_certs    = optional(bool)
    basic_auth_password       = optional(string)
    basic_auth_username       = optional(string)
    detailed_messages_to_send = optional(string)
    http_headers              = optional(map(string))
    messages_to_send          = optional(string)
    resource_details_to_send  = optional(string)
    resource_version          = optional(string)
    build_completed = optional(object({
      build_status    = optional(string)
      definition_name = optional(string)
    }))
    git_pull_request_commented = optional(object({
      branch        = optional(string)
      repository_id = optional(string)
    }))
    git_pull_request_created = optional(object({
      branch                          = optional(string)
      pull_request_created_by         = optional(string)
      pull_request_reviewers_contains = optional(string)
      repository_id                   = optional(string)
    }))
    git_pull_request_merge_attempted = optional(object({
      branch                          = optional(string)
      merge_result                    = optional(string)
      pull_request_created_by         = optional(string)
      pull_request_reviewers_contains = optional(string)
      repository_id                   = optional(string)
    }))
    git_pull_request_updated = optional(object({
      branch                          = optional(string)
      notification_type               = optional(string)
      pull_request_created_by         = optional(string)
      pull_request_reviewers_contains = optional(string)
      repository_id                   = optional(string)
    }))
    git_push = optional(object({
      branch        = optional(string)
      pushed_by     = optional(string)
      repository_id = optional(string)
    }))
    repository_created = optional(object({
      project_id = optional(string)
    }))
    repository_deleted = optional(object({
      repository_id = optional(string)
    }))
    repository_forked = optional(object({
      repository_id = optional(string)
    }))
    repository_renamed = optional(object({
      repository_id = optional(string)
    }))
    repository_status_changed = optional(object({
      repository_id = optional(string)
    }))
    service_connection_created = optional(object({
      project_id = optional(string)
    }))
    service_connection_updated = optional(object({
      project_id = optional(string)
    }))
    tfvc_checkin = optional(object({
      path = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
    work_item_commented = optional(object({
      area_path       = optional(string)
      comment_pattern = optional(string)
      tag             = optional(string)
      work_item_type  = optional(string)
    }))
    work_item_created = optional(object({
      area_path      = optional(string)
      links_changed  = optional(bool)
      tag            = optional(string)
      work_item_type = optional(string)
    }))
    work_item_deleted = optional(object({
      area_path      = optional(string)
      tag            = optional(string)
      work_item_type = optional(string)
    }))
    work_item_restored = optional(object({
      area_path      = optional(string)
      tag            = optional(string)
      work_item_type = optional(string)
    }))
    work_item_updated = optional(object({
      area_path      = optional(string)
      changed_fields = optional(string)
      links_changed  = optional(bool)
      tag            = optional(string)
      work_item_type = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.servicehook_webhook_tfs : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.project_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.servicehook_webhook_tfs : (
        v.resource_details_to_send == null || (contains(["all", "minimal", "none"], v.resource_details_to_send))
      )
    ])
    error_message = "must be one of: \"all\", \"minimal\", \"none\""
  }
  validation {
    condition = alltrue([
      for k, v in var.servicehook_webhook_tfs : (
        v.messages_to_send == null || (contains(["all", "text", "html", "markdown", "none"], v.messages_to_send))
      )
    ])
    error_message = "must be one of: \"all\", \"text\", \"html\", \"markdown\", \"none\""
  }
  validation {
    condition = alltrue([
      for k, v in var.servicehook_webhook_tfs : (
        v.detailed_messages_to_send == null || (contains(["all", "text", "html", "markdown", "none"], v.detailed_messages_to_send))
      )
    ])
    error_message = "must be one of: \"all\", \"text\", \"html\", \"markdown\", \"none\""
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

