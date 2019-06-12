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

defmodule GoogleApi.Compute.V1.Model.Route do
  @moduledoc """
  Represents a Route resource.  A route defines a path from VM instances in the VPC network to a specific destination. This destination can be inside or outside the VPC network. For more information, read the Routes overview. (&#x3D;&#x3D; resource_for beta.routes &#x3D;&#x3D;) (&#x3D;&#x3D; resource_for v1.routes &#x3D;&#x3D;)

  ## Attributes

  - tags ([String.t]): A list of instance tags to which this route applies. Defaults to: `null`.
  - creationTimestamp (String.t): [Output Only] Creation timestamp in RFC3339 text format. Defaults to: `null`.
  - description (String.t): An optional description of this resource. Provide this field when you create the resource. Defaults to: `null`.
  - destRange (String.t): The destination range of outgoing packets that this route applies to. Only IPv4 is supported. Defaults to: `null`.
  - id (String.t): [Output Only] The unique identifier for the resource. This identifier is defined by the server. Defaults to: `null`.
  - kind (String.t): [Output Only] Type of this resource. Always compute#routes for Route resources. Defaults to: `null`.
  - name (String.t): Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression &#x60;[a-z]([-a-z0-9]*[a-z0-9])?&#x60;. The first character must be a lowercase letter, and all following characters (except for the last character) must be a dash, lowercase letter, or digit. The last character must be a lowercase letter or digit. Defaults to: `null`.
  - network (String.t): Fully-qualified URL of the network that this route applies to. Defaults to: `null`.
  - nextHopGateway (String.t): The URL to a gateway that should handle matching packets. You can only specify the internet gateway using a full or partial valid URL:  projects/project/global/gateways/default-internet-gateway Defaults to: `null`.
  - nextHopInstance (String.t): The URL to an instance that should handle matching packets. You can specify this as a full or partial URL. For example: https://www.googleapis.com/compute/v1/projects/project/zones/zone/instances/ Defaults to: `null`.
  - nextHopIp (String.t): The network IP address of an instance that should handle matching packets. Only IPv4 is supported. Defaults to: `null`.
  - nextHopNetwork (String.t): The URL of the local network if it should handle matching packets. Defaults to: `null`.
  - nextHopPeering (String.t): [Output Only] The network peering name that should handle matching packets, which should conform to RFC1035. Defaults to: `null`.
  - nextHopVpnTunnel (String.t): The URL to a VpnTunnel that should handle matching packets. Defaults to: `null`.
  - priority (integer()): The priority of this route. Priority is used to break ties in cases where there is more than one matching route of equal prefix length. In cases where multiple routes have equal prefix length, the one with the lowest-numbered priority value wins. The default value is &#x60;1000&#x60;. The priority value must be from &#x60;0&#x60; to &#x60;65535&#x60;, inclusive. Defaults to: `null`.
  - selfLink (String.t): [Output Only] Server-defined fully-qualified URL for this resource. Defaults to: `null`.
  - warnings ([OperationWarnings]): [Output Only] If potential misconfigurations are detected for this route, this field will be populated with warning messages. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :tags => list(any()),
          :creationTimestamp => any(),
          :description => any(),
          :destRange => any(),
          :id => any(),
          :kind => any(),
          :name => any(),
          :network => any(),
          :nextHopGateway => any(),
          :nextHopInstance => any(),
          :nextHopIp => any(),
          :nextHopNetwork => any(),
          :nextHopPeering => any(),
          :nextHopVpnTunnel => any(),
          :priority => any(),
          :selfLink => any(),
          :warnings => list(GoogleApi.Compute.V1.Model.OperationWarnings.t())
        }

  field(:tags, type: :list)
  field(:creationTimestamp)
  field(:description)
  field(:destRange)
  field(:id)
  field(:kind)
  field(:name)
  field(:network)
  field(:nextHopGateway)
  field(:nextHopInstance)
  field(:nextHopIp)
  field(:nextHopNetwork)
  field(:nextHopPeering)
  field(:nextHopVpnTunnel)
  field(:priority)
  field(:selfLink)
  field(:warnings, as: GoogleApi.Compute.V1.Model.OperationWarnings, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.Route do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.Route.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.Route do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
