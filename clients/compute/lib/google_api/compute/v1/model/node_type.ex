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

defmodule GoogleApi.Compute.V1.Model.NodeType do
  @moduledoc """
  Represent a sole-tenant Node Type resource.  Each node within a node group must have a node type. A node type specifies the total amount of cores and memory for that node. Currently, the only available node type is n1-node-96-624 node type that has 96 vCPUs and 624 GB of memory, available in multiple zones. For more information read Node types. (&#x3D;&#x3D; resource_for beta.nodeTypes &#x3D;&#x3D;) (&#x3D;&#x3D; resource_for v1.nodeTypes &#x3D;&#x3D;)

  ## Attributes

  - cpuPlatform (String.t): [Output Only] The CPU platform used by this node type. Defaults to: `null`.
  - creationTimestamp (String.t): [Output Only] Creation timestamp in RFC3339 text format. Defaults to: `null`.
  - deprecated (DeprecationStatus): [Output Only] The deprecation status associated with this node type. Defaults to: `null`.
  - description (String.t): [Output Only] An optional textual description of the resource. Defaults to: `null`.
  - guestCpus (integer()): [Output Only] The number of virtual CPUs that are available to the node type. Defaults to: `null`.
  - id (String.t): [Output Only] The unique identifier for the resource. This identifier is defined by the server. Defaults to: `null`.
  - kind (String.t): [Output Only] The type of the resource. Always compute#nodeType for node types. Defaults to: `null`.
  - localSsdGb (integer()): [Output Only] Local SSD available to the node type, defined in GB. Defaults to: `null`.
  - memoryMb (integer()): [Output Only] The amount of physical memory available to the node type, defined in MB. Defaults to: `null`.
  - name (String.t): [Output Only] Name of the resource. Defaults to: `null`.
  - selfLink (String.t): [Output Only] Server-defined URL for the resource. Defaults to: `null`.
  - zone (String.t): [Output Only] The name of the zone where the node type resides, such as us-central1-a. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cpuPlatform => any(),
          :creationTimestamp => any(),
          :deprecated => GoogleApi.Compute.V1.Model.DeprecationStatus.t(),
          :description => any(),
          :guestCpus => any(),
          :id => any(),
          :kind => any(),
          :localSsdGb => any(),
          :memoryMb => any(),
          :name => any(),
          :selfLink => any(),
          :zone => any()
        }

  field(:cpuPlatform)
  field(:creationTimestamp)
  field(:deprecated, as: GoogleApi.Compute.V1.Model.DeprecationStatus)
  field(:description)
  field(:guestCpus)
  field(:id)
  field(:kind)
  field(:localSsdGb)
  field(:memoryMb)
  field(:name)
  field(:selfLink)
  field(:zone)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.NodeType do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.NodeType.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.NodeType do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
