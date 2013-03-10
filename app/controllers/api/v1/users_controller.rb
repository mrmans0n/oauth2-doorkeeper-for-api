module Api
  module V1
    class UsersController < ApplicationController
      doorkeeper_for :all
      respond_to :json

      def index
        #respond_with User.all
        user = User.find(doorkeeper_token.resource_owner_id)
        respond_with user
      end

      def show

      end

      def create

      end

      def update

      end

      def destroy

      end
    end

  end
end