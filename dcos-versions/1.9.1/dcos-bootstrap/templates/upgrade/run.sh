#!/bin/sh

mkdir -p genconf
cat << 'EOF' | sed '/^$/d' | sudo tee genconf/config.yaml
---
# Auto-generated by Terraform Templates
# Created on date: ${timestamp()}
${bootstrap_private_ip == "" ? "" : "bootstrap_url: http://${bootstrap_private_ip}:${dcos_bootstrap_port}"}
${dcos_cluster_name == "" ? "" : "cluster_name: ${dcos_cluster_name}"}
${dcos_security== "" ? "" : "security: ${dcos_security}"}
${dcos_resolvers== "" ? "" : "resolvers: ${dcos_resolvers}"}
${dcos_oauth_enabled== "" ? "" : "oauth_enabled: ${dcos_oauth_enabled}"}
${dcos_master_discovery== "" ? "" : "master_discovery: ${dcos_master_discovery}"}
${dcos_aws_template_storage_bucket== "" ? "" : "aws_template_storage_bucket: ${dcos_aws_template_storage_bucket}"}
${dcos_aws_template_storage_bucket_path== "" ? "" : "aws_template_storage_bucket_path: ${dcos_aws_template_storage_bucket_path}"}
${dcos_aws_template_storage_region_name== "" ? "" : "aws_template_storage_region_name: ${dcos_aws_template_storage_region_name}"}
${dcos_aws_template_upload== "" ? "" : "aws_template_upload: ${dcos_aws_template_upload}"}
${dcos_aws_template_storage_access_key_id== "" ? "" : "aws_template_storage_access_key_id: ${dcos_aws_template_storage_access_key_id}"}
${dcos_aws_template_storage_secret_access_key== "" ? "" : "aws_template_storage_secret_access_key: ${dcos_aws_template_storage_secret_access_key}"}
${dcos_exhibitor_storage_backend== "" ? "" : "exhibitor_storage_backend: ${dcos_exhibitor_storage_backend}"}
${dcos_exhibitor_zk_hosts== "" ? "" : "exhibitor_zk_hosts: ${dcos_exhibitor_zk_hosts}"}
${dcos_exhibitor_zk_path== "" ? "" : "exhibitor_zk_path: ${dcos_exhibitor_zk_path}"}
${dcos_aws_access_key_id== "" ? "" : "aws_access_key_id: ${dcos_aws_access_key_id}"}
${dcos_aws_region== "" ? "" : "aws_region: ${dcos_aws_region}"}
${dcos_aws_secret_access_key== "" ? "" : "aws_secret_access_key: ${dcos_aws_secret_access_key}"}
${dcos_exhibitor_explicit_keys== "" ? "" : "exhibitor_explicit_keys: ${dcos_exhibitor_explicit_keys}"}
${dcos_exhibitor_storage_backend == "aws_s3" ? dcos_s3_bucket== "" ? "" : "s3_bucket: ${dcos_s3_bucket}" : ""}
${dcos_exhibitor_storage_backend == "aws_s3" ? dcos_s3_prefix== "" ? "" : "s3_prefix: ${dcos_s3_prefix}" : ""}
${dcos_exhibitor_azure_account_name== "" ? "" : "exhibitor_azure_account_name: ${dcos_exhibitor_azure_account_name}"}
${dcos_exhibitor_azure_account_key== "" ? "" : "exhibitor_azure_account_key: ${dcos_exhibitor_azure_account_key}"}
${dcos_exhibitor_azure_prefix== "" ? "" : "exhibitor_azure_prefix: ${dcos_exhibitor_azure_prefix}"}
${dcos_master_discovery == "master_http_loadbalancer" ? dcos_num_masters == "" ? "" : "num_masters: ${dcos_num_masters}" : ""}
${dcos_master_discovery == "master_http_loadbalancer" ? dcos_exhibitor_address== "" ? "" : "exhibitor_address: ${dcos_exhibitor_address}" : ""}
${dcos_master_discovery == "static" ? dcos_master_list== "" ? "" : "master_list: ${dcos_master_list}" : ""}
${dcos_customer_key== "" ? "" : "customer_key: ${dcos_customer_key}"}
${dcos_rexray_config_method== "" ? "" : "rexray_config_method: ${dcos_rexray_config_method}"}
${dcos_rexray_config_filename== "" ? "" : "rexray_config_filename: ${dcos_rexray_config_filename}"}
${dcos_auth_cookie_secure_flag== "" ? "" : "auth_cookie_secure_flag: ${dcos_auth_cookie_secure_flag}"}
${dcos_bouncer_expiration_auth_token_days== "" ? "" : "bouncer_expiration_auth_token_days: ${dcos_bouncer_expiration_auth_token_days}"}
${dcos_superuser_password_hash== "" ? "" : "superuser_password_hash: ${dcos_superuser_password_hash}"}
${dcos_superuser_username== "" ? "" : "superuser_username: ${dcos_superuser_username}"}
${dcos_telemetry_enabled== "" ? "" : "telemetry_enabled: ${dcos_telemetry_enabled}"}
${dcos_zk_super_credentials== "" ? "" : "zk_super_credentials: ${dcos_zk_super_credentials}"}
${dcos_zk_master_credentials== "" ? "" : "zk_master_credentials: ${dcos_zk_master_credentials}"}
${dcos_zk_agent_credentials== "" ? "" : "zk_agent_credentials: ${dcos_zk_agent_credentials}"}
${dcos_overlay_enable== "" ? "" : "dcos_overlay_enable: ${dcos_overlay_enable}"}
${dcos_overlay_config_attempts== "" ? "" : "dcos_overlay_config_attempts: ${dcos_overlay_config_attempts}"}
${dcos_overlay_mtu== "" ? "" : "dcos_overlay_mtu: ${dcos_overlay_mtu}"}
${dcos_overlay_network== "" ? "" : "dcos_overlay_network: ${dcos_overlay_network}"}
${dcos_dns_search== "" ? "" : "dns_search: ${dcos_dns_search}"}
${dcos_master_dns_bindall== "" ? "" : "master_dns_bindall: ${dcos_master_dns_bindall}"}
${dcos_use_proxy== "" ? "" : "use_proxy: ${dcos_use_proxy}"}
${dcos_http_proxy== "" ? "" : "http_proxy: ${dcos_http_proxy}"}
${dcos_https_proxy== "" ? "" : "https_proxy: ${dcos_https_proxy}"}
${dcos_no_proxy== "" ? "" : "no_proxy: ${dcos_no_proxy}"}
${dcos_check_time== "" ? "" : "check_time: ${dcos_check_time}"}
${dcos_ip_detect_public_contents== "" ? "" : "ip_detect_public_contents: ${dcos_ip_detect_public_contents}"}
${dcos_docker_remove_delay== "" ? "" : "docker_remove_delay: ${dcos_docker_remove_delay}"}
${dcos_audit_logging== "" ? "" : "audit_logging: ${dcos_audit_logging}"}
${dcos_gc_delay== "" ? "" : "gc_delay: ${dcos_gc_delay}"}
${dcos_log_directory== "" ? "" : "log_directory: ${dcos_log_directory}"}
${dcos_process_timeout== "" ? "" : "process_timeout: ${dcos_process_timeout}"}
${dcos_cluster_docker_credentials== "" ? "" : "cluster_docker_credentials: ${dcos_cluster_docker_credentials}"}
${dcos_cluster_docker_credentials_dcos_owned== "" ? "" : "cluster_docker_credentials_dcos_owned: ${dcos_cluster_docker_credentials_dcos_owned}"}
${dcos_cluster_docker_credentials_write_to_etc== "" ? "" : "cluster_docker_credentials_write_to_etc: ${dcos_cluster_docker_credentials_write_to_etc}"}
${dcos_cluster_docker_credentials_enabled== "" ? "" : "cluster_docker_credentials_enabled: ${dcos_cluster_docker_credentials_enabled}"}
${dcos_cluster_docker_registry_url == "" ? "" : "cluster_docker_registry_url: ${dcos_cluster_docker_registry_url}"}
${dcos_cluster_docker_registry_enabled == "" ? "" : "cluster_docker_registry_enabled: ${dcos_cluster_docker_registry_enabled}"}
${dcos_rexray_config == "" ? "" : "rexray_config: ${dcos_rexray_config}"}
${dcos_staged_package_storage_uri == "" ? "" : dcos_package_storage_uri == "" ? "" : "cosmos_config:"}
${dcos_staged_package_storage_uri == "" ? "" : "  staged_package_storage_uri: ${dcos_staged_package_storage_uri}"}
${dcos_package_storage_uri == "" ? "" : "  package_storage_uri: ${dcos_package_storage_uri}"}
EOF
sudo cp /tmp/ip-detect genconf/.
OVERRIDE_PREVIOUS_DCOS_VERSION=${dcos_previous_version}
PREVIOUS_DCOS_VERSION=$(grep -a "'dcos_version':" "$(find dcos_generate_config.* | tail -1)" | cut -d ":" -f2 | sed 's/,$//' | sed s/\'//g)
curl -o dcos_generate_config.${dcos_version}.sh ${dcos_download_path}
sudo bash dcos_generate_config.${dcos_version}.sh --generate-node-upgrade-script $${OVERRIDE_PREVIOUS_DCOS_VERSION:-$${PREVIOUS_DCOS_VERSION}}
sudo rm -fr genconf/serve/upgrade/current
sudo cp -r genconf/serve/upgrade/$(ls -1tr genconf/serve/upgrade/ | tail -1) genconf/serve/upgrade/current
sudo docker rm -f $(docker ps -a -q -f ancestor=nginx)
sudo docker run -d -p ${dcos_bootstrap_port}:80 -v $PWD/genconf/serve:/usr/share/nginx/html:ro nginx
