class UsersController < ApplicationController
  def index
    users = UserResource.all(params)
    render jsonapi: users
  end

  def show
    user = UserResource.find(params)
    render jsonapi: user
  end

  def create
    user = UserResource.build(params)

    if user.save
      render jsonapi: user, status: :created
    else
      render jsonapi_errors: user
    end
  end

  def update
    user = UserResource.find(params)

    if user.update_attributes
      render jsonapi: user, status: :ok
    else
      render jsonapi_errors: user
    end
  end

  def destroy
    user = UserResource.find(params)

    if user.destroy
      render jsonapi: { meta: {} }, status: :ok
    else
      render jsonapi_errors: user
    end
  end
end
