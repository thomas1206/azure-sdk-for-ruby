# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MachineLearning
  module Models
    #
    # Information about the machine learning workspace containing the
    # experiment that is source for the web service.
    #
    class MachineLearningWorkspace

      include MsRestAzure

      # @return [String] Specifies the workspace ID of the machine learning
      # workspace associated with the web service
      attr_accessor :id


      #
      # Mapper for MachineLearningWorkspace class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MachineLearningWorkspace',
          type: {
            name: 'Composite',
            class_name: 'MachineLearningWorkspace',
            model_properties: {
              id: {
                required: true,
                serialized_name: 'id',
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
