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

defmodule GoogleApi.PubSub.V1.Model.ModifyAckDeadlineRequest do
  @moduledoc """
  Request for the ModifyAckDeadline method.

  ## Attributes

  *   `ackDeadlineSeconds` (*type:* `integer()`, *default:* `nil`) - Required. The new ack deadline with respect to the time this request was sent to the Pub/Sub system. For example, if the value is 10, the new ack deadline will expire 10 seconds after the `ModifyAckDeadline` call was made. Specifying zero might immediately make the message available for delivery to another subscriber client. This typically results in an increase in the rate of message redeliveries (that is, duplicates). The minimum deadline you can specify is 0 seconds. The maximum deadline you can specify is 600 seconds (10 minutes).
  *   `ackIds` (*type:* `list(String.t)`, *default:* `nil`) - Required. List of acknowledgment IDs.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ackDeadlineSeconds => integer(),
          :ackIds => list(String.t())
        }

  field(:ackDeadlineSeconds)
  field(:ackIds, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.PubSub.V1.Model.ModifyAckDeadlineRequest do
  def decode(value, options) do
    GoogleApi.PubSub.V1.Model.ModifyAckDeadlineRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PubSub.V1.Model.ModifyAckDeadlineRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
