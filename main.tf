resource "azuredevops_servicehook_webhook_tfs" "servicehook_webhook_tfs" {
  for_each = var.servicehook_webhook_tfs

  project_id                = each.value.project_id
  url                       = each.value.url
  accept_untrusted_certs    = each.value.accept_untrusted_certs
  basic_auth_password       = each.value.basic_auth_password
  basic_auth_username       = each.value.basic_auth_username
  detailed_messages_to_send = each.value.detailed_messages_to_send
  http_headers              = each.value.http_headers
  messages_to_send          = each.value.messages_to_send
  resource_details_to_send  = each.value.resource_details_to_send
  resource_version          = each.value.resource_version

  dynamic "build_completed" {
    for_each = each.value.build_completed != null ? [each.value.build_completed] : []
    content {
      build_status    = build_completed.value.build_status
      definition_name = build_completed.value.definition_name
    }
  }

  dynamic "git_pull_request_commented" {
    for_each = each.value.git_pull_request_commented != null ? [each.value.git_pull_request_commented] : []
    content {
      branch        = git_pull_request_commented.value.branch
      repository_id = git_pull_request_commented.value.repository_id
    }
  }

  dynamic "git_pull_request_created" {
    for_each = each.value.git_pull_request_created != null ? [each.value.git_pull_request_created] : []
    content {
      branch                          = git_pull_request_created.value.branch
      pull_request_created_by         = git_pull_request_created.value.pull_request_created_by
      pull_request_reviewers_contains = git_pull_request_created.value.pull_request_reviewers_contains
      repository_id                   = git_pull_request_created.value.repository_id
    }
  }

  dynamic "git_pull_request_merge_attempted" {
    for_each = each.value.git_pull_request_merge_attempted != null ? [each.value.git_pull_request_merge_attempted] : []
    content {
      branch                          = git_pull_request_merge_attempted.value.branch
      merge_result                    = git_pull_request_merge_attempted.value.merge_result
      pull_request_created_by         = git_pull_request_merge_attempted.value.pull_request_created_by
      pull_request_reviewers_contains = git_pull_request_merge_attempted.value.pull_request_reviewers_contains
      repository_id                   = git_pull_request_merge_attempted.value.repository_id
    }
  }

  dynamic "git_pull_request_updated" {
    for_each = each.value.git_pull_request_updated != null ? [each.value.git_pull_request_updated] : []
    content {
      branch                          = git_pull_request_updated.value.branch
      notification_type               = git_pull_request_updated.value.notification_type
      pull_request_created_by         = git_pull_request_updated.value.pull_request_created_by
      pull_request_reviewers_contains = git_pull_request_updated.value.pull_request_reviewers_contains
      repository_id                   = git_pull_request_updated.value.repository_id
    }
  }

  dynamic "git_push" {
    for_each = each.value.git_push != null ? [each.value.git_push] : []
    content {
      branch        = git_push.value.branch
      pushed_by     = git_push.value.pushed_by
      repository_id = git_push.value.repository_id
    }
  }

  dynamic "repository_created" {
    for_each = each.value.repository_created != null ? [each.value.repository_created] : []
    content {
      project_id = repository_created.value.project_id
    }
  }

  dynamic "repository_deleted" {
    for_each = each.value.repository_deleted != null ? [each.value.repository_deleted] : []
    content {
      repository_id = repository_deleted.value.repository_id
    }
  }

  dynamic "repository_forked" {
    for_each = each.value.repository_forked != null ? [each.value.repository_forked] : []
    content {
      repository_id = repository_forked.value.repository_id
    }
  }

  dynamic "repository_renamed" {
    for_each = each.value.repository_renamed != null ? [each.value.repository_renamed] : []
    content {
      repository_id = repository_renamed.value.repository_id
    }
  }

  dynamic "repository_status_changed" {
    for_each = each.value.repository_status_changed != null ? [each.value.repository_status_changed] : []
    content {
      repository_id = repository_status_changed.value.repository_id
    }
  }

  dynamic "service_connection_created" {
    for_each = each.value.service_connection_created != null ? [each.value.service_connection_created] : []
    content {
      project_id = service_connection_created.value.project_id
    }
  }

  dynamic "service_connection_updated" {
    for_each = each.value.service_connection_updated != null ? [each.value.service_connection_updated] : []
    content {
      project_id = service_connection_updated.value.project_id
    }
  }

  dynamic "tfvc_checkin" {
    for_each = each.value.tfvc_checkin != null ? [each.value.tfvc_checkin] : []
    content {
      path = tfvc_checkin.value.path
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }

  dynamic "work_item_commented" {
    for_each = each.value.work_item_commented != null ? [each.value.work_item_commented] : []
    content {
      area_path       = work_item_commented.value.area_path
      comment_pattern = work_item_commented.value.comment_pattern
      tag             = work_item_commented.value.tag
      work_item_type  = work_item_commented.value.work_item_type
    }
  }

  dynamic "work_item_created" {
    for_each = each.value.work_item_created != null ? [each.value.work_item_created] : []
    content {
      area_path      = work_item_created.value.area_path
      links_changed  = work_item_created.value.links_changed
      tag            = work_item_created.value.tag
      work_item_type = work_item_created.value.work_item_type
    }
  }

  dynamic "work_item_deleted" {
    for_each = each.value.work_item_deleted != null ? [each.value.work_item_deleted] : []
    content {
      area_path      = work_item_deleted.value.area_path
      tag            = work_item_deleted.value.tag
      work_item_type = work_item_deleted.value.work_item_type
    }
  }

  dynamic "work_item_restored" {
    for_each = each.value.work_item_restored != null ? [each.value.work_item_restored] : []
    content {
      area_path      = work_item_restored.value.area_path
      tag            = work_item_restored.value.tag
      work_item_type = work_item_restored.value.work_item_type
    }
  }

  dynamic "work_item_updated" {
    for_each = each.value.work_item_updated != null ? [each.value.work_item_updated] : []
    content {
      area_path      = work_item_updated.value.area_path
      changed_fields = work_item_updated.value.changed_fields
      links_changed  = work_item_updated.value.links_changed
      tag            = work_item_updated.value.tag
      work_item_type = work_item_updated.value.work_item_type
    }
  }
}

