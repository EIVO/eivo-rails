# frozen_string_literal: true

module EIVO
  module Concerns
    module Resources
      extend ::ActiveSupport::Concern

      def index
        @objects ||= collection_index
      end

      def show
        @object ||= collection.find(params[:id])
      end

      def new
        @object ||= collection.new
      end

      def create
        @object ||= collection.new
        @object.assign_attributes(object_params_create)

        if @object.save
          redirect_to action: :index
        else
          render :new
        end
      end

      def edit
        @object ||= collection.find(params[:id])
      end

      def update
        @object ||= collection.find(params[:id])
        @object.assign_attributes(object_params_update)

        if @object.update(object_params_update)
          redirect_to action: :index
        else
          render :edit
        end
      end

      def destroy
        @object ||= collection.find(params[:id])
        @object.destroy

        redirect_to action: :index
      end

      protected

      def collection
        raise NotImplementedError
      end

      def collection_index
        collection
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
