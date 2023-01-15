# -*- encoding: utf-8 -*-
# stub: aws-sdk-core 3.168.4 ruby lib

Gem::Specification.new do |s|
  s.name = "aws-sdk-core".freeze
  s.version = "3.168.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "changelog_uri" => "https://github.com/aws/aws-sdk-ruby/tree/version-3/gems/aws-sdk-core/CHANGELOG.md", "source_code_uri" => "https://github.com/aws/aws-sdk-ruby/tree/version-3/gems/aws-sdk-core" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Amazon Web Services".freeze]
  s.date = "2022-12-08"
  s.description = "Provides API clients for AWS. This gem is part of the official AWS SDK for Ruby.".freeze
  s.files = ["CHANGELOG.md".freeze, "LICENSE.txt".freeze, "VERSION".freeze, "ca-bundle.crt".freeze, "lib/aws-defaults.rb".freeze, "lib/aws-defaults/default_configuration.rb".freeze, "lib/aws-defaults/defaults_mode_config_resolver.rb".freeze, "lib/aws-sdk-core.rb".freeze, "lib/aws-sdk-core/arn.rb".freeze, "lib/aws-sdk-core/arn_parser.rb".freeze, "lib/aws-sdk-core/assume_role_credentials.rb".freeze, "lib/aws-sdk-core/assume_role_web_identity_credentials.rb".freeze, "lib/aws-sdk-core/async_client_stubs.rb".freeze, "lib/aws-sdk-core/binary.rb".freeze, "lib/aws-sdk-core/binary/decode_handler.rb".freeze, "lib/aws-sdk-core/binary/encode_handler.rb".freeze, "lib/aws-sdk-core/binary/event_builder.rb".freeze, "lib/aws-sdk-core/binary/event_parser.rb".freeze, "lib/aws-sdk-core/binary/event_stream_decoder.rb".freeze, "lib/aws-sdk-core/binary/event_stream_encoder.rb".freeze, "lib/aws-sdk-core/client_side_monitoring/publisher.rb".freeze, "lib/aws-sdk-core/client_side_monitoring/request_metrics.rb".freeze, "lib/aws-sdk-core/client_stubs.rb".freeze, "lib/aws-sdk-core/credential_provider.rb".freeze, "lib/aws-sdk-core/credential_provider_chain.rb".freeze, "lib/aws-sdk-core/credentials.rb".freeze, "lib/aws-sdk-core/deprecations.rb".freeze, "lib/aws-sdk-core/eager_loader.rb".freeze, "lib/aws-sdk-core/ec2_metadata.rb".freeze, "lib/aws-sdk-core/ecs_credentials.rb".freeze, "lib/aws-sdk-core/endpoint_cache.rb".freeze, "lib/aws-sdk-core/endpoints.rb".freeze, "lib/aws-sdk-core/endpoints/condition.rb".freeze, "lib/aws-sdk-core/endpoints/endpoint.rb".freeze, "lib/aws-sdk-core/endpoints/endpoint_rule.rb".freeze, "lib/aws-sdk-core/endpoints/error_rule.rb".freeze, "lib/aws-sdk-core/endpoints/function.rb".freeze, "lib/aws-sdk-core/endpoints/matchers.rb".freeze, "lib/aws-sdk-core/endpoints/reference.rb".freeze, "lib/aws-sdk-core/endpoints/rule.rb".freeze, "lib/aws-sdk-core/endpoints/rule_set.rb".freeze, "lib/aws-sdk-core/endpoints/rules_provider.rb".freeze, "lib/aws-sdk-core/endpoints/templater.rb".freeze, "lib/aws-sdk-core/endpoints/tree_rule.rb".freeze, "lib/aws-sdk-core/endpoints/url.rb".freeze, "lib/aws-sdk-core/errors.rb".freeze, "lib/aws-sdk-core/event_emitter.rb".freeze, "lib/aws-sdk-core/ini_parser.rb".freeze, "lib/aws-sdk-core/instance_profile_credentials.rb".freeze, "lib/aws-sdk-core/json.rb".freeze, "lib/aws-sdk-core/json/builder.rb".freeze, "lib/aws-sdk-core/json/error_handler.rb".freeze, "lib/aws-sdk-core/json/handler.rb".freeze, "lib/aws-sdk-core/json/json_engine.rb".freeze, "lib/aws-sdk-core/json/oj_engine.rb".freeze, "lib/aws-sdk-core/json/parser.rb".freeze, "lib/aws-sdk-core/log/formatter.rb".freeze, "lib/aws-sdk-core/log/handler.rb".freeze, "lib/aws-sdk-core/log/param_filter.rb".freeze, "lib/aws-sdk-core/log/param_formatter.rb".freeze, "lib/aws-sdk-core/pageable_response.rb".freeze, "lib/aws-sdk-core/pager.rb".freeze, "lib/aws-sdk-core/param_converter.rb".freeze, "lib/aws-sdk-core/param_validator.rb".freeze, "lib/aws-sdk-core/plugins/api_key.rb".freeze, "lib/aws-sdk-core/plugins/apig_authorizer_token.rb".freeze, "lib/aws-sdk-core/plugins/apig_credentials_configuration.rb".freeze, "lib/aws-sdk-core/plugins/apig_user_agent.rb".freeze, "lib/aws-sdk-core/plugins/bearer_authorization.rb".freeze, "lib/aws-sdk-core/plugins/checksum_algorithm.rb".freeze, "lib/aws-sdk-core/plugins/client_metrics_plugin.rb".freeze, "lib/aws-sdk-core/plugins/client_metrics_send_plugin.rb".freeze, "lib/aws-sdk-core/plugins/credentials_configuration.rb".freeze, "lib/aws-sdk-core/plugins/defaults_mode.rb".freeze, "lib/aws-sdk-core/plugins/endpoint_discovery.rb".freeze, "lib/aws-sdk-core/plugins/endpoint_pattern.rb".freeze, "lib/aws-sdk-core/plugins/event_stream_configuration.rb".freeze, "lib/aws-sdk-core/plugins/global_configuration.rb".freeze, "lib/aws-sdk-core/plugins/helpful_socket_errors.rb".freeze, "lib/aws-sdk-core/plugins/http_checksum.rb".freeze, "lib/aws-sdk-core/plugins/idempotency_token.rb".freeze, "lib/aws-sdk-core/plugins/invocation_id.rb".freeze, "lib/aws-sdk-core/plugins/jsonvalue_converter.rb".freeze, "lib/aws-sdk-core/plugins/logging.rb".freeze, "lib/aws-sdk-core/plugins/param_converter.rb".freeze, "lib/aws-sdk-core/plugins/param_validator.rb".freeze, "lib/aws-sdk-core/plugins/protocols/api_gateway.rb".freeze, "lib/aws-sdk-core/plugins/protocols/ec2.rb".freeze, "lib/aws-sdk-core/plugins/protocols/json_rpc.rb".freeze, "lib/aws-sdk-core/plugins/protocols/query.rb".freeze, "lib/aws-sdk-core/plugins/protocols/rest_json.rb".freeze, "lib/aws-sdk-core/plugins/protocols/rest_xml.rb".freeze, "lib/aws-sdk-core/plugins/recursion_detection.rb".freeze, "lib/aws-sdk-core/plugins/regional_endpoint.rb".freeze, "lib/aws-sdk-core/plugins/response_paging.rb".freeze, "lib/aws-sdk-core/plugins/retries/client_rate_limiter.rb".freeze, "lib/aws-sdk-core/plugins/retries/clock_skew.rb".freeze, "lib/aws-sdk-core/plugins/retries/error_inspector.rb".freeze, "lib/aws-sdk-core/plugins/retries/retry_quota.rb".freeze, "lib/aws-sdk-core/plugins/retry_errors.rb".freeze, "lib/aws-sdk-core/plugins/sign.rb".freeze, "lib/aws-sdk-core/plugins/signature_v2.rb".freeze, "lib/aws-sdk-core/plugins/signature_v4.rb".freeze, "lib/aws-sdk-core/plugins/stub_responses.rb".freeze, "lib/aws-sdk-core/plugins/transfer_encoding.rb".freeze, "lib/aws-sdk-core/plugins/user_agent.rb".freeze, "lib/aws-sdk-core/process_credentials.rb".freeze, "lib/aws-sdk-core/query.rb".freeze, "lib/aws-sdk-core/query/ec2_param_builder.rb".freeze, "lib/aws-sdk-core/query/handler.rb".freeze, "lib/aws-sdk-core/query/param.rb".freeze, "lib/aws-sdk-core/query/param_builder.rb".freeze, "lib/aws-sdk-core/query/param_list.rb".freeze, "lib/aws-sdk-core/refreshing_credentials.rb".freeze, "lib/aws-sdk-core/refreshing_token.rb".freeze, "lib/aws-sdk-core/resources/collection.rb".freeze, "lib/aws-sdk-core/rest.rb".freeze, "lib/aws-sdk-core/rest/handler.rb".freeze, "lib/aws-sdk-core/rest/request/body.rb".freeze, "lib/aws-sdk-core/rest/request/builder.rb".freeze, "lib/aws-sdk-core/rest/request/endpoint.rb".freeze, "lib/aws-sdk-core/rest/request/headers.rb".freeze, "lib/aws-sdk-core/rest/request/querystring_builder.rb".freeze, "lib/aws-sdk-core/rest/response/body.rb".freeze, "lib/aws-sdk-core/rest/response/headers.rb".freeze, "lib/aws-sdk-core/rest/response/parser.rb".freeze, "lib/aws-sdk-core/rest/response/status_code.rb".freeze, "lib/aws-sdk-core/shared_config.rb".freeze, "lib/aws-sdk-core/shared_credentials.rb".freeze, "lib/aws-sdk-core/sso_credentials.rb".freeze, "lib/aws-sdk-core/sso_token_provider.rb".freeze, "lib/aws-sdk-core/static_token_provider.rb".freeze, "lib/aws-sdk-core/structure.rb".freeze, "lib/aws-sdk-core/stubbing/data_applicator.rb".freeze, "lib/aws-sdk-core/stubbing/empty_stub.rb".freeze, "lib/aws-sdk-core/stubbing/protocols/api_gateway.rb".freeze, "lib/aws-sdk-core/stubbing/protocols/ec2.rb".freeze, "lib/aws-sdk-core/stubbing/protocols/json.rb".freeze, "lib/aws-sdk-core/stubbing/protocols/query.rb".freeze, "lib/aws-sdk-core/stubbing/protocols/rest.rb".freeze, "lib/aws-sdk-core/stubbing/protocols/rest_json.rb".freeze, "lib/aws-sdk-core/stubbing/protocols/rest_xml.rb".freeze, "lib/aws-sdk-core/stubbing/stub_data.rb".freeze, "lib/aws-sdk-core/stubbing/xml_error.rb".freeze, "lib/aws-sdk-core/token.rb".freeze, "lib/aws-sdk-core/token_provider.rb".freeze, "lib/aws-sdk-core/token_provider_chain.rb".freeze, "lib/aws-sdk-core/type_builder.rb".freeze, "lib/aws-sdk-core/util.rb".freeze, "lib/aws-sdk-core/waiters.rb".freeze, "lib/aws-sdk-core/waiters/errors.rb".freeze, "lib/aws-sdk-core/waiters/poller.rb".freeze, "lib/aws-sdk-core/waiters/waiter.rb".freeze, "lib/aws-sdk-core/xml.rb".freeze, "lib/aws-sdk-core/xml/builder.rb".freeze, "lib/aws-sdk-core/xml/default_list.rb".freeze, "lib/aws-sdk-core/xml/default_map.rb".freeze, "lib/aws-sdk-core/xml/doc_builder.rb".freeze, "lib/aws-sdk-core/xml/error_handler.rb".freeze, "lib/aws-sdk-core/xml/parser.rb".freeze, "lib/aws-sdk-core/xml/parser/engines/libxml.rb".freeze, "lib/aws-sdk-core/xml/parser/engines/nokogiri.rb".freeze, "lib/aws-sdk-core/xml/parser/engines/oga.rb".freeze, "lib/aws-sdk-core/xml/parser/engines/ox.rb".freeze, "lib/aws-sdk-core/xml/parser/engines/rexml.rb".freeze, "lib/aws-sdk-core/xml/parser/frame.rb".freeze, "lib/aws-sdk-core/xml/parser/parsing_error.rb".freeze, "lib/aws-sdk-core/xml/parser/stack.rb".freeze, "lib/aws-sdk-sso.rb".freeze, "lib/aws-sdk-sso/client.rb".freeze, "lib/aws-sdk-sso/client_api.rb".freeze, "lib/aws-sdk-sso/customizations.rb".freeze, "lib/aws-sdk-sso/endpoint_parameters.rb".freeze, "lib/aws-sdk-sso/endpoint_provider.rb".freeze, "lib/aws-sdk-sso/endpoints.rb".freeze, "lib/aws-sdk-sso/errors.rb".freeze, "lib/aws-sdk-sso/plugins/endpoints.rb".freeze, "lib/aws-sdk-sso/resource.rb".freeze, "lib/aws-sdk-sso/types.rb".freeze, "lib/aws-sdk-ssooidc.rb".freeze, "lib/aws-sdk-ssooidc/client.rb".freeze, "lib/aws-sdk-ssooidc/client_api.rb".freeze, "lib/aws-sdk-ssooidc/customizations.rb".freeze, "lib/aws-sdk-ssooidc/endpoint_parameters.rb".freeze, "lib/aws-sdk-ssooidc/endpoint_provider.rb".freeze, "lib/aws-sdk-ssooidc/endpoints.rb".freeze, "lib/aws-sdk-ssooidc/errors.rb".freeze, "lib/aws-sdk-ssooidc/plugins/endpoints.rb".freeze, "lib/aws-sdk-ssooidc/resource.rb".freeze, "lib/aws-sdk-ssooidc/types.rb".freeze, "lib/aws-sdk-sts.rb".freeze, "lib/aws-sdk-sts/client.rb".freeze, "lib/aws-sdk-sts/client_api.rb".freeze, "lib/aws-sdk-sts/customizations.rb".freeze, "lib/aws-sdk-sts/endpoint_parameters.rb".freeze, "lib/aws-sdk-sts/endpoint_provider.rb".freeze, "lib/aws-sdk-sts/endpoints.rb".freeze, "lib/aws-sdk-sts/errors.rb".freeze, "lib/aws-sdk-sts/plugins/endpoints.rb".freeze, "lib/aws-sdk-sts/plugins/sts_regional_endpoints.rb".freeze, "lib/aws-sdk-sts/presigner.rb".freeze, "lib/aws-sdk-sts/resource.rb".freeze, "lib/aws-sdk-sts/types.rb".freeze, "lib/seahorse.rb".freeze, "lib/seahorse/client/async_base.rb".freeze, "lib/seahorse/client/async_response.rb".freeze, "lib/seahorse/client/base.rb".freeze, "lib/seahorse/client/block_io.rb".freeze, "lib/seahorse/client/configuration.rb".freeze, "lib/seahorse/client/events.rb".freeze, "lib/seahorse/client/h2/connection.rb".freeze, "lib/seahorse/client/h2/handler.rb".freeze, "lib/seahorse/client/handler.rb".freeze, "lib/seahorse/client/handler_builder.rb".freeze, "lib/seahorse/client/handler_list.rb".freeze, "lib/seahorse/client/handler_list_entry.rb".freeze, "lib/seahorse/client/http/async_response.rb".freeze, "lib/seahorse/client/http/headers.rb".freeze, "lib/seahorse/client/http/request.rb".freeze, "lib/seahorse/client/http/response.rb".freeze, "lib/seahorse/client/logging/formatter.rb".freeze, "lib/seahorse/client/logging/handler.rb".freeze, "lib/seahorse/client/managed_file.rb".freeze, "lib/seahorse/client/net_http/connection_pool.rb".freeze, "lib/seahorse/client/net_http/handler.rb".freeze, "lib/seahorse/client/net_http/patches.rb".freeze, "lib/seahorse/client/networking_error.rb".freeze, "lib/seahorse/client/plugin.rb".freeze, "lib/seahorse/client/plugin_list.rb".freeze, "lib/seahorse/client/plugins/content_length.rb".freeze, "lib/seahorse/client/plugins/endpoint.rb".freeze, "lib/seahorse/client/plugins/h2.rb".freeze, "lib/seahorse/client/plugins/logging.rb".freeze, "lib/seahorse/client/plugins/net_http.rb".freeze, "lib/seahorse/client/plugins/operation_methods.rb".freeze, "lib/seahorse/client/plugins/raise_response_errors.rb".freeze, "lib/seahorse/client/plugins/request_callback.rb".freeze, "lib/seahorse/client/plugins/response_target.rb".freeze, "lib/seahorse/client/request.rb".freeze, "lib/seahorse/client/request_context.rb".freeze, "lib/seahorse/client/response.rb".freeze, "lib/seahorse/model/api.rb".freeze, "lib/seahorse/model/authorizer.rb".freeze, "lib/seahorse/model/operation.rb".freeze, "lib/seahorse/model/shapes.rb".freeze, "lib/seahorse/util.rb".freeze, "lib/seahorse/version.rb".freeze]
  s.homepage = "https://github.com/aws/aws-sdk-ruby".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3".freeze)
  s.rubygems_version = "3.3.26".freeze
  s.summary = "AWS SDK for Ruby - Core".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<jmespath>.freeze, ["~> 1", ">= 1.6.1"])
    s.add_runtime_dependency(%q<aws-partitions>.freeze, ["~> 1", ">= 1.651.0"])
    s.add_runtime_dependency(%q<aws-sigv4>.freeze, ["~> 1.5"])
    s.add_runtime_dependency(%q<aws-eventstream>.freeze, ["~> 1", ">= 1.0.2"])
  else
    s.add_dependency(%q<jmespath>.freeze, ["~> 1", ">= 1.6.1"])
    s.add_dependency(%q<aws-partitions>.freeze, ["~> 1", ">= 1.651.0"])
    s.add_dependency(%q<aws-sigv4>.freeze, ["~> 1.5"])
    s.add_dependency(%q<aws-eventstream>.freeze, ["~> 1", ">= 1.0.2"])
  end
end

