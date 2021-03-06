# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.SASPortal.V1alpha1.Model.SasPortalCustomer do
  @moduledoc """
  Entity representing a SAS customer.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. Name of the organization that the customer entity represents.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Resource name of the customer.
  *   `sasUserIds` (*type:* `list(String.t)`, *default:* `nil`) - User IDs used by the devices belonging to this customer.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t(),
          :name => String.t(),
          :sasUserIds => list(String.t())
        }

  field(:displayName)
  field(:name)
  field(:sasUserIds, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.SASPortal.V1alpha1.Model.SasPortalCustomer do
  def decode(value, options) do
    GoogleApi.SASPortal.V1alpha1.Model.SasPortalCustomer.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SASPortal.V1alpha1.Model.SasPortalCustomer do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
