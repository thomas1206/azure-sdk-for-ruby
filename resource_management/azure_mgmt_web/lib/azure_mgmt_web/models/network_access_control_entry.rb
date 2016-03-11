# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.16.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Model object.
    #
    class NetworkAccessControlEntry

      include MsRestAzure

      # @return [AccessControlEntryAction] Possible values include: 'Permit',
      # 'Deny'
      attr_accessor :action

      # @return [String]
      attr_accessor :description

      # @return [Integer]
      attr_accessor :order

      # @return [String]
      attr_accessor :remote_subnet

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.action
        output_object['action'] = serialized_property unless serialized_property.nil?

        serialized_property = object.description
        output_object['description'] = serialized_property unless serialized_property.nil?

        serialized_property = object.order
        output_object['order'] = serialized_property unless serialized_property.nil?

        serialized_property = object.remote_subnet
        output_object['remoteSubnet'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [NetworkAccessControlEntry] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = NetworkAccessControlEntry.new

        deserialized_property = object['action']
        if (!deserialized_property.nil? && !deserialized_property.empty?)
          enum_is_valid = AccessControlEntryAction.constants.any? { |e| AccessControlEntryAction.const_get(e).to_s.downcase == deserialized_property.downcase }
          warn 'Enum AccessControlEntryAction does not contain ' + deserialized_property.downcase + ', but was received from the server.' unless enum_is_valid
        end
        output_object.action = deserialized_property

        deserialized_property = object['description']
        output_object.description = deserialized_property

        deserialized_property = object['order']
        deserialized_property = Integer(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.order = deserialized_property

        deserialized_property = object['remoteSubnet']
        output_object.remote_subnet = deserialized_property

        output_object
      end
    end
  end
end