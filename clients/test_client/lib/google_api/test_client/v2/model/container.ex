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

defmodule GoogleApi.TestClient.V2.Model.Container do
  @moduledoc """
  A data structure to test simple types

  ## Attributes

  *   `arrayRefVal` (*type:* `list(GoogleApi.TestClient.V2.Model.Container.t)`, *default:* `nil`) - An array of reference objects
  *   `arrayVal` (*type:* `list(String.t)`, *default:* `nil`) - An array of strings
  *   `booleanVal` (*type:* `boolean()`, *default:* `nil`) - A simple boolean
  *   `numberVal` (*type:* `number()`, *default:* `nil`) - A simple number
  *   `objectRefVal` (*type:* `GoogleApi.TestClient.V2.Model.Container.t`, *default:* `nil`) - A reference to an object definition.
  *   `objectVal` (*type:* `GoogleApi.TestClient.V2.Model.ContainerObjectVal.t`, *default:* `nil`) - An inline object definition
  *   `stringVal` (*type:* `String.t`, *default:* `nil`) - A simple string
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :arrayRefVal => list(GoogleApi.TestClient.V2.Model.Container.t()),
          :arrayVal => list(String.t()),
          :booleanVal => boolean(),
          :numberVal => number(),
          :objectRefVal => GoogleApi.TestClient.V2.Model.Container.t(),
          :objectVal => GoogleApi.TestClient.V2.Model.ContainerObjectVal.t(),
          :stringVal => String.t()
        }

  field(:arrayRefVal, as: GoogleApi.TestClient.V2.Model.Container, type: :list)
  field(:arrayVal, type: :list)
  field(:booleanVal)
  field(:numberVal)
  field(:objectRefVal, as: GoogleApi.TestClient.V2.Model.Container)
  field(:objectVal, as: GoogleApi.TestClient.V2.Model.ContainerObjectVal)
  field(:stringVal)
end

defimpl Poison.Decoder, for: GoogleApi.TestClient.V2.Model.Container do
  def decode(value, options) do
    GoogleApi.TestClient.V2.Model.Container.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TestClient.V2.Model.Container do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
