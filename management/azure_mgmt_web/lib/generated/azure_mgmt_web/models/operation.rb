# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Class that represents an operation.
    #
    class Operation

      include MsRestAzure

      # @return [String] Operation Id
      attr_accessor :id

      # @return [String] Operation Name
      attr_accessor :name

      # @return [OperationStatus] The current status of the operation.
      # Possible values include: 'InProgress', 'Failed', 'Succeeded',
      # 'TimedOut', 'Created'
      attr_accessor :status

      # @return [Array<ErrorEntity>] Any errors associate with the operation
      attr_accessor :errors

      # @return [DateTime] Time when operation has started
      attr_accessor :created_time

      # @return [DateTime] Time when operation has been updated
      attr_accessor :modified_time

      # @return [DateTime] Time when operation will expire
      attr_accessor :expiration_time

      # @return [String] Applicable only for stamp operation ids.
      attr_accessor :geo_master_operation_id


      #
      # Mapper for Operation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Operation',
          type: {
            name: 'Composite',
            class_name: 'Operation',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
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
              status: {
                required: true,
                serialized_name: 'status',
                type: {
                  name: 'Enum',
                  module: 'OperationStatus'
                }
              },
              errors: {
                required: false,
                serialized_name: 'errors',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ErrorEntityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ErrorEntity'
                      }
                  }
                }
              },
              created_time: {
                required: false,
                serialized_name: 'createdTime',
                type: {
                  name: 'DateTime'
                }
              },
              modified_time: {
                required: false,
                serialized_name: 'modifiedTime',
                type: {
                  name: 'DateTime'
                }
              },
              expiration_time: {
                required: false,
                serialized_name: 'expirationTime',
                type: {
                  name: 'DateTime'
                }
              },
              geo_master_operation_id: {
                required: false,
                serialized_name: 'geoMasterOperationId',
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
