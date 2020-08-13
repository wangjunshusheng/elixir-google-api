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

defmodule GoogleApi.PubSub.V1.Model.Topic do
  @moduledoc """
  A topic resource.

  ## Attributes

  *   `kmsKeyName` (*type:* `String.t`, *default:* `nil`) - The resource name of the Cloud KMS CryptoKey to be used to protect access to messages published on this topic. The expected format is `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  *   `labels` (*type:* `map()`, *default:* `nil`) - See [Creating and managing labels] (https://cloud.google.com/pubsub/docs/labels).
  *   `messageStoragePolicy` (*type:* `GoogleApi.PubSub.V1.Model.MessageStoragePolicy.t`, *default:* `nil`) - Policy constraining the set of Google Cloud Platform regions where messages published to the topic may be stored. If not present, then no constraints are in effect.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The name of the topic. It must have the format `"projects/{project}/topics/{topic}"`. `{topic}` must start with a letter, and contain only letters (`[A-Za-z]`), numbers (`[0-9]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters in length, and it must not start with `"goog"`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kmsKeyName => String.t(),
          :labels => map(),
          :messageStoragePolicy => GoogleApi.PubSub.V1.Model.MessageStoragePolicy.t(),
          :name => String.t()
        }

  field(:kmsKeyName)
  field(:labels, type: :map)
  field(:messageStoragePolicy, as: GoogleApi.PubSub.V1.Model.MessageStoragePolicy)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.PubSub.V1.Model.Topic do
  def decode(value, options) do
    GoogleApi.PubSub.V1.Model.Topic.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PubSub.V1.Model.Topic do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
