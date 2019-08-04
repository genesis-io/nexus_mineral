# frozen_string_literal: true
Rails.application.routes.draw do
  scope path: ApplicationResource.endpoint_namespace, defaults: { format: :jsonapi } do
    resources :users
    mount VandalUi::Engine, at: '/vandal'
  end
end
