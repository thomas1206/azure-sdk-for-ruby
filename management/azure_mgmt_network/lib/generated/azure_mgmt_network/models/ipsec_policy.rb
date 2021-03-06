# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # An IPSec Policy configuration for a virtual network gateway connection
    #
    class IpsecPolicy

      include MsRestAzure

      # @return [Integer] The IPSec Security Association (also called Quick
      # Mode or Phase 2 SA) lifetime in seconds for a site to site VPN tunnel.
      attr_accessor :sa_life_time_seconds

      # @return [Integer] The IPSec Security Association (also called Quick
      # Mode or Phase 2 SA) payload size in KB for a site to site VPN tunnel.
      attr_accessor :sa_data_size_kilobytes

      # @return [IpsecEncryption] The IPSec encryption algorithm (IKE phase 1).
      # Possible values include: 'None', 'DES', 'DES3', 'AES128', 'AES192',
      # 'AES256', 'GCMAES128', 'GCMAES192', 'GCMAES256'
      attr_accessor :ipsec_encryption

      # @return [IpsecIntegrity] The IPSec integrity algorithm (IKE phase 1).
      # Possible values include: 'MD5', 'SHA1', 'SHA256', 'GCMAES128',
      # 'GCMAES192', 'GCMAES256'
      attr_accessor :ipsec_integrity

      # @return [IkeEncryption] The IKE encryption algorithm (IKE phase 2).
      # Possible values include: 'DES', 'DES3', 'AES128', 'AES192', 'AES256'
      attr_accessor :ike_encryption

      # @return [IkeIntegrity] The IKE integrity algorithm (IKE phase 2).
      # Possible values include: 'MD5', 'SHA1', 'SHA256', 'SHA384'
      attr_accessor :ike_integrity

      # @return [DhGroup] The DH Groups used in IKE Phase 1 for initial SA.
      # Possible values include: 'None', 'DHGroup1', 'DHGroup2', 'DHGroup14',
      # 'DHGroup2048', 'ECP256', 'ECP384', 'DHGroup24'
      attr_accessor :dh_group

      # @return [PfsGroup] The DH Groups used in IKE Phase 2 for new child SA.
      # Possible values include: 'None', 'PFS1', 'PFS2', 'PFS2048', 'ECP256',
      # 'ECP384', 'PFS24'
      attr_accessor :pfs_group


      #
      # Mapper for IpsecPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'IpsecPolicy',
          type: {
            name: 'Composite',
            class_name: 'IpsecPolicy',
            model_properties: {
              sa_life_time_seconds: {
                required: true,
                serialized_name: 'saLifeTimeSeconds',
                type: {
                  name: 'Number'
                }
              },
              sa_data_size_kilobytes: {
                required: true,
                serialized_name: 'saDataSizeKilobytes',
                type: {
                  name: 'Number'
                }
              },
              ipsec_encryption: {
                required: true,
                serialized_name: 'ipsecEncryption',
                type: {
                  name: 'String'
                }
              },
              ipsec_integrity: {
                required: true,
                serialized_name: 'ipsecIntegrity',
                type: {
                  name: 'String'
                }
              },
              ike_encryption: {
                required: true,
                serialized_name: 'ikeEncryption',
                type: {
                  name: 'String'
                }
              },
              ike_integrity: {
                required: true,
                serialized_name: 'ikeIntegrity',
                type: {
                  name: 'String'
                }
              },
              dh_group: {
                required: true,
                serialized_name: 'dhGroup',
                type: {
                  name: 'String'
                }
              },
              pfs_group: {
                required: true,
                serialized_name: 'pfsGroup',
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
