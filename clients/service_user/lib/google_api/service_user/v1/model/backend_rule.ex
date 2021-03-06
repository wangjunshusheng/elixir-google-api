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

defmodule GoogleApi.ServiceUser.V1.Model.BackendRule do
  @moduledoc """
  A backend rule provides configuration for an individual API element.

  ## Attributes

  *   `address` (*type:* `String.t`, *default:* `nil`) - The address of the API backend.
  *   `deadline` (*type:* `float()`, *default:* `nil`) - The number of seconds to wait for a response from a request.  The default
      deadline for gRPC is infinite (no deadline) and HTTP requests is 5 seconds.
  *   `jwtAudience` (*type:* `String.t`, *default:* `nil`) - The JWT audience is used when generating a JWT id token for the backend.
  *   `minDeadline` (*type:* `float()`, *default:* `nil`) - Minimum deadline in seconds needed for this method. Calls having deadline
      value lower than this will be rejected.
  *   `operationDeadline` (*type:* `float()`, *default:* `nil`) - The number of seconds to wait for the completion of a long running
      operation. The default is no deadline.
  *   `pathTranslation` (*type:* `String.t`, *default:* `nil`) - 
  *   `selector` (*type:* `String.t`, *default:* `nil`) - Selects the methods to which this rule applies.

      Refer to selector for syntax details.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :address => String.t(),
          :deadline => float(),
          :jwtAudience => String.t(),
          :minDeadline => float(),
          :operationDeadline => float(),
          :pathTranslation => String.t(),
          :selector => String.t()
        }

  field(:address)
  field(:deadline)
  field(:jwtAudience)
  field(:minDeadline)
  field(:operationDeadline)
  field(:pathTranslation)
  field(:selector)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceUser.V1.Model.BackendRule do
  def decode(value, options) do
    GoogleApi.ServiceUser.V1.Model.BackendRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceUser.V1.Model.BackendRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
