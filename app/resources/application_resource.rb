# frozen_string_literal: true

class ApplicationResource < Graphiti::Resource
  self.abstract_class = true
  self.adapter = Graphiti::Adapters::ActiveRecord
  self.base_url = Rails.application.routes.default_url_options[:host]
  self.endpoint_namespace = '/v1'
end
