# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # SlowRequestsBasedTrigger
    #
    class SlowRequestsBasedTrigger

      include MsRestAzure

      # @return [String] TimeTaken
      attr_accessor :time_taken

      # @return [Integer] Count
      attr_accessor :count

      # @return [String] TimeInterval
      attr_accessor :time_interval


      #
      # Mapper for SlowRequestsBasedTrigger class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SlowRequestsBasedTrigger',
          type: {
            name: 'Composite',
            class_name: 'SlowRequestsBasedTrigger',
            model_properties: {
              time_taken: {
                required: false,
                serialized_name: 'timeTaken',
                type: {
                  name: 'String'
                }
              },
              count: {
                required: false,
                serialized_name: 'count',
                type: {
                  name: 'Number'
                }
              },
              time_interval: {
                required: false,
                serialized_name: 'timeInterval',
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
