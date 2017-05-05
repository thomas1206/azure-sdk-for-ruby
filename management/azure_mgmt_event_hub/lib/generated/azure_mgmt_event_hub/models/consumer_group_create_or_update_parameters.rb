# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::EventHub
  module Models
    #
    # Parameters supplied to the Create Or Update Consumer Group operation.
    #
    class ConsumerGroupCreateOrUpdateParameters

      include MsRestAzure

      # @return [String] Location of the resource.
      attr_accessor :location

      # @return [String] ARM type of the namespace.
      attr_accessor :type

      # @return [String] Name of the consumer group.
      attr_accessor :name

      # @return [DateTime] Exact time the message was created.
      attr_accessor :created_at

      # @return [String] The path of the Event Hub.
      attr_accessor :event_hub_path

      # @return [DateTime] The exact time the message was updated.
      attr_accessor :updated_at

      # @return [String] The user metadata.
      attr_accessor :user_metadata


      #
      # Mapper for ConsumerGroupCreateOrUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ConsumerGroupCreateOrUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'ConsumerGroupCreateOrUpdateParameters',
            model_properties: {
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              created_at: {
                required: false,
                read_only: true,
                serialized_name: 'properties.createdAt',
                type: {
                  name: 'DateTime'
                }
              },
              event_hub_path: {
                required: false,
                read_only: true,
                serialized_name: 'properties.eventHubPath',
                type: {
                  name: 'String'
                }
              },
              updated_at: {
                required: false,
                read_only: true,
                serialized_name: 'properties.updatedAt',
                type: {
                  name: 'DateTime'
                }
              },
              user_metadata: {
                required: false,
                serialized_name: 'properties.userMetadata',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
