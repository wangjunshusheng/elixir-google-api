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

defmodule GoogleApi.FirebaseML.V1.Model.ModelOperationMetadata do
  @moduledoc """
  This is returned in the longrunning operations for create/update.

  ## Attributes

  *   `basicOperationStatus` (*type:* `String.t`, *default:* `nil`) - 
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the model we are creating/updating The name must have the form `projects/{project_id}/models/{model_id}`
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :basicOperationStatus => String.t(),
          :name => String.t()
        }

  field(:basicOperationStatus)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseML.V1.Model.ModelOperationMetadata do
  def decode(value, options) do
    GoogleApi.FirebaseML.V1.Model.ModelOperationMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseML.V1.Model.ModelOperationMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
