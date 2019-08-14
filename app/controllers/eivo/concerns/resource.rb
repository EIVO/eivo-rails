# frozen_string_literal: true

module EIVO
  module Concerns
    module Resource
      extend ::ActiveSupport::Concern

      def show
        @object ||= collection
      end

      def new
        @object ||= collection.new
      end

      def create
        @object ||= collection.new
        @object.assign_attributes(object_params_create)

        if @object.save
          render :new
        else
          redirect_to action: :index
        end
      end

      def edit
        @object ||= collection
      end

      def update
        @object ||= collection
        @object.assign_attributes(object_params_update)

        if @object.save
          render :edit
        else
          redirect_to action: :index
        end
      end

      def destroy
        @object ||= collection

        @object.destroy
        redirect_to action: :index
      end

      protected

      def collection
        raise NotImplementedError
      end

      def object_params
        raise NotImplementedError
      end

      def object_params_create
        object_params
      end

      def object_params_update
        object_params
      end
    end
  end
end
