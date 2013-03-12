module Api
  module V1
    class UsersController < ApplicationController
      doorkeeper_for :all, :except => :create
      respond_to :json

      def index
        respond_with User.all
      end

      def show
        user = User.find(doorkeeper_token.resource_owner_id)
        respond_with user
      end

      def create
        user = User.create(params[:user])
        respond_with :api, :v1, user
      end

      def update
         head :ok
      end

      def destroy
         head :ok
      end
    end

  end
end