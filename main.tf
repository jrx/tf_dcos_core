# DCOS Module 

data "template_file" "script" {
template = "${file("${path.module}/dcos-versions/${var.dcos_version}/${var.role}/templates/${var.dcos_install_mode}/run.sh")}"

  vars {
    bootstrap_private_ip = "${var.bootstrap_private_ip}"
    dcos_bootstrap_port = "${var.dcos_bootstrap_port}"
    dcos_download_path = "${coalesce(var.custom_dcos_download_path, var.dcos_download_path[var.dcos_version])}"
    dcos_agent_list = "${var.dcos_agent_list}"
    dcos_version = "${var.dcos_version}"
    dcos_audit_logging = "${var.dcos_audit_logging}"
    dcos_auth_cookie_secure_flag = "${var.dcos_auth_cookie_secure_flag}"
    dcos_aws_access_key_id = "${var.dcos_aws_access_key_id}"
    dcos_aws_region = "${var.dcos_aws_region}"
    dcos_aws_secret_access_key = "${var.dcos_aws_secret_access_key}"
    dcos_aws_template_storage_access_key_id = "${var.dcos_aws_template_storage_access_key_id}"
    dcos_aws_template_storage_bucket = "${var.dcos_aws_template_storage_bucket}"
    dcos_aws_template_storage_bucket_path = "${var.dcos_aws_template_storage_bucket_path}"
    dcos_aws_template_storage_region_name = "${var.dcos_aws_template_storage_region_name}"
    dcos_aws_template_storage_secret_access_key = "${var.dcos_aws_template_storage_secret_access_key}"
    dcos_aws_template_upload = "${var.dcos_aws_template_upload}"
    dcos_bouncer_expiration_auth_token_days = "${var.dcos_bouncer_expiration_auth_token_days}"
    dcos_check_time = "${var.dcos_check_time}"
    dcos_cluster_docker_credentials = "${var.dcos_cluster_docker_credentials}"
    dcos_cluster_docker_credentials_dcos_owned = "${var.dcos_cluster_docker_credentials_dcos_owned}"
    dcos_cluster_docker_credentials_enabled = "${var.dcos_cluster_docker_credentials_enabled}"
    dcos_cluster_docker_credentials_write_to_etc = "${var.dcos_cluster_docker_credentials_write_to_etc}"
    dcos_cluster_name  = "${var.dcos_cluster_name}"
    dcos_customer_key = "${var.dcos_customer_key}"
    dcos_dns_search = "${var.dcos_dns_search}"
    dcos_docker_remove_delay = "${var.dcos_docker_remove_delay}"
    dcos_exhibitor_address = "${var.dcos_exhibitor_address}"
    dcos_exhibitor_azure_account_key = "${var.dcos_exhibitor_azure_account_key}"
    dcos_exhibitor_azure_account_name = "${var.dcos_exhibitor_azure_account_name}"
    dcos_exhibitor_azure_prefix = "${var.dcos_exhibitor_azure_prefix}"
    dcos_exhibitor_explicit_keys = "${var.dcos_exhibitor_explicit_keys}"
    dcos_exhibitor_storage_backend = "${var.dcos_exhibitor_storage_backend}"
    dcos_exhibitor_zk_hosts = "${var.dcos_exhibitor_zk_hosts}"
    dcos_exhibitor_zk_path = "${var.dcos_exhibitor_zk_path}"
    dcos_gc_delay = "${var.dcos_gc_delay}"
    dcos_http_proxy = "${var.dcos_http_proxy}"
    dcos_https_proxy = "${var.dcos_https_proxy}"
    dcos_log_directory = "${var.dcos_log_directory}"
    dcos_master_external_loadbalancer = "${var.dcos_master_external_loadbalancer}"
    dcos_master_discovery = "${var.dcos_master_discovery}"
    dcos_master_dns_bindall = "${var.dcos_master_dns_bindall}"
    dcos_master_list = "${var.dcos_master_list}"
    dcos_no_proxy = "${var.dcos_no_proxy}"
    dcos_num_masters = "${var.dcos_num_masters}"
    dcos_oauth_enabled = "${var.dcos_oauth_enabled}"
    dcos_overlay_config_attempts = "${var.dcos_overlay_config_attempts}"
    dcos_overlay_enable = "${var.dcos_overlay_enable}"
    dcos_overlay_mtu = "${var.dcos_overlay_mtu}"
    dcos_overlay_network = "${var.dcos_overlay_network}"
    dcos_process_timeout = "${var.dcos_process_timeout}"
    dcos_public_agent_list = "${var.dcos_public_agent_list}"
    dcos_previous_version = "${var.dcos_previous_version}"
    dcos_resolvers  = "${var.dcos_resolvers}"
    dcos_rexray_config_filename = "${var.dcos_rexray_config_filename}"
    dcos_rexray_config_method = "${var.dcos_rexray_config_method}"
    dcos_s3_bucket = "${var.dcos_s3_bucket}"
    dcos_s3_prefix = "${var.dcos_s3_prefix}"
    dcos_security  = "${var.dcos_security}"
    dcos_superuser_password_hash = "${var.dcos_superuser_password_hash}"
    dcos_superuser_username = "${var.dcos_superuser_username}"
    dcos_skip_checks = "${var.dcos_skip_checks}"
    dcos_telemetry_enabled = "${var.dcos_telemetry_enabled}"
    dcos_use_proxy = "${var.dcos_use_proxy}"
    dcos_zk_agent_credentials = "${var.dcos_zk_agent_credentials}"
    dcos_zk_master_credentials = "${var.dcos_zk_master_credentials}"
    dcos_zk_super_credentials = "${var.dcos_zk_super_credentials}"
    dcos_cluster_docker_registry_url = "${var.dcos_cluster_docker_registry_url}"
    dcos_rexray_config = "${var.dcos_rexray_config}"
    dcos_ip_detect_public_filename = "${var.dcos_ip_detect_public_filename}"
    dcos_ip_detect_public_contents = "${var.dcos_ip_detect_public_contents}"    
    dcos_ip_detect_contents = "${var.dcos_ip_detect_contents}"
    dcos_cluster_docker_registry_enabled = "${var.dcos_cluster_docker_registry_enabled}"
    dcos_enable_docker_gc = "${var.dcos_enable_docker_gc}"
    dcos_staged_package_storage_uri = "${var.dcos_staged_package_storage_uri}"
    dcos_package_storage_uri = "${var.dcos_package_storage_uri}"
  }
}
