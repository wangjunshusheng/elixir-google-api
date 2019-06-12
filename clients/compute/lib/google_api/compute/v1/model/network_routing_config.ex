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

defmodule GoogleApi.Compute.V1.Model.NetworkRoutingConfig do
  @moduledoc """
  A routing configuration attached to a network resource. The message includes the list of routers associated with the network, and a flag indicating the type of routing behavior to enforce network-wide.

  ## Attributes

  - routingMode (String.t): The network-wide routing mode to use. If set to REGIONAL, this network&#39;s Cloud Routers will only advertise routes with subnets of this network in the same region as the router. If set to GLOBAL, this network&#39;s Cloud Routers will advertise routes with all subnets of this network, across regions. Defaults to: `null`.
    - Enum - one of [GLOBAL, REGIONAL]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :routingMode => any()
        }

  field(:routingMode)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.NetworkRoutingConfig do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.NetworkRoutingConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.NetworkRoutingConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
