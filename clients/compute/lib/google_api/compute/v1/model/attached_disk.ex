# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Compute.V1.Model.AttachedDisk do
  @moduledoc """
  An instance-attached disk resource.

  ## Attributes

  - autoDelete (boolean()): Specifies whether the disk will be auto-deleted when the instance is deleted (but not when the disk is detached from the instance). Defaults to: `null`.
  - boot (boolean()): Indicates that this is a boot disk. The virtual machine will use the first partition of the disk for its root filesystem. Defaults to: `null`.
  - deviceName (String.t): Specifies a unique device name of your choice that is reflected into the /dev/disk/by-id/google-* tree of a Linux operating system running within the instance. This name can be used to reference the device for mounting, resizing, and so on, from within the instance.  If not specified, the server chooses a default device name to apply to this disk, in the form persistent-disk-x, where x is a number assigned by Google Compute Engine. This field is only applicable for persistent disks. Defaults to: `null`.
  - diskEncryptionKey (CustomerEncryptionKey): Encrypts or decrypts a disk using a customer-supplied encryption key.  If you are creating a new disk, this field encrypts the new disk using an encryption key that you provide. If you are attaching an existing disk that is already encrypted, this field decrypts the disk using the customer-supplied encryption key.  If you encrypt a disk using a customer-supplied key, you must provide the same key again when you attempt to use this resource at a later time. For example, you must provide the key when you create a snapshot or an image from the disk or when you attach the disk to a virtual machine instance.  If you do not provide an encryption key, then the disk will be encrypted using an automatically generated key and you do not need to provide a key to use the disk later.  Instance templates do not store customer-supplied encryption keys, so you cannot use your own keys to encrypt disks in a managed instance group. Defaults to: `null`.
  - guestOsFeatures ([GuestOsFeature]): A list of features to enable on the guest operating system. Applicable only for bootable images. Read  Enabling guest operating system features to see a list of available options. Defaults to: `null`.
  - index (integer()): [Output Only] A zero-based index to this disk, where 0 is reserved for the boot disk. If you have many disks attached to an instance, each disk would have a unique index number. Defaults to: `null`.
  - initializeParams (AttachedDiskInitializeParams): [Input Only] Specifies the parameters for a new disk that will be created alongside the new instance. Use initialization parameters to create boot disks or local SSDs attached to the new instance.  This property is mutually exclusive with the source property; you can only define one or the other, but not both. Defaults to: `null`.
  - interface (String.t): Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI. Persistent disks must always use SCSI and the request will fail if you attempt to attach a persistent disk in any other format than SCSI. Local SSDs can use either NVME or SCSI. For performance characteristics of SCSI over NVMe, see Local SSD performance. TODO(b/131765817): Update documentation when NVME is supported. Defaults to: `null`.
    - Enum - one of [NVME, SCSI]
  - kind (String.t): [Output Only] Type of the resource. Always compute#attachedDisk for attached disks. Defaults to: `null`.
  - licenses ([String.t]): [Output Only] Any valid publicly visible licenses. Defaults to: `null`.
  - mode (String.t): The mode in which to attach this disk, either READ_WRITE or READ_ONLY. If not specified, the default is to attach the disk in READ_WRITE mode. Defaults to: `null`.
    - Enum - one of [READ_ONLY, READ_WRITE]
  - source (String.t): Specifies a valid partial or full URL to an existing Persistent Disk resource. When creating a new instance, one of initializeParams.sourceImage or disks.source is required except for local SSD.  If desired, you can also attach existing non-root persistent disks using this property. This field is only applicable for persistent disks.  Note that for InstanceTemplate, specify the disk name, not the URL for the disk. Defaults to: `null`.
  - type (String.t): Specifies the type of the disk, either SCRATCH or PERSISTENT. If not specified, the default is PERSISTENT. Defaults to: `null`.
    - Enum - one of [PERSISTENT, SCRATCH]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoDelete => any(),
          :boot => any(),
          :deviceName => any(),
          :diskEncryptionKey => GoogleApi.Compute.V1.Model.CustomerEncryptionKey.t(),
          :guestOsFeatures => list(GoogleApi.Compute.V1.Model.GuestOsFeature.t()),
          :index => any(),
          :initializeParams => GoogleApi.Compute.V1.Model.AttachedDiskInitializeParams.t(),
          :interface => any(),
          :kind => any(),
          :licenses => list(any()),
          :mode => any(),
          :source => any(),
          :type => any()
        }

  field(:autoDelete)
  field(:boot)
  field(:deviceName)
  field(:diskEncryptionKey, as: GoogleApi.Compute.V1.Model.CustomerEncryptionKey)
  field(:guestOsFeatures, as: GoogleApi.Compute.V1.Model.GuestOsFeature, type: :list)
  field(:index)
  field(:initializeParams, as: GoogleApi.Compute.V1.Model.AttachedDiskInitializeParams)
  field(:interface)
  field(:kind)
  field(:licenses, type: :list)
  field(:mode)
  field(:source)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.AttachedDisk do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.AttachedDisk.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.AttachedDisk do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
