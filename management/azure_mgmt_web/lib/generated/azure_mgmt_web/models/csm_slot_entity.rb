# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Class containing deployment slot parameters
    #
    class CsmSlotEntity

      include MsRestAzure

      # @return [String] Set the destination deployment slot during swap
      # operation
      attr_accessor :target_slot

      # @return [Boolean] Get or set the flag indicating it should preserve
      # VNet to the slot during swap
      attr_accessor :preserve_vnet


      #
      # Mapper for CsmSlotEntity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CsmSlotEntity',
          type: {
            name: 'Composite',
            class_name: 'CsmSlotEntity',
            model_properties: {
              target_slot: {
                required: false,
                serialized_name: 'targetSlot',
                type: {
                  name: 'String'
                }
              },
              preserve_vnet: {
                required: false,
                serialized_name: 'preserveVnet',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
