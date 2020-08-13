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

defmodule GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p2beta1_DetectedLandmark do
  @moduledoc """
  A generic detected landmark represented by name in string format and a 2D location.

  ## Attributes

  *   `confidence` (*type:* `number()`, *default:* `nil`) - The confidence score of the detected landmark. Range [0, 1].
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of this landmark, for example, left_hand, right_shoulder.
  *   `point` (*type:* `GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex.t`, *default:* `nil`) - The 2D point of the detected landmark using the normalized image coordindate system. The normalized coordinates have the range from 0 to 1.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :confidence => number(),
          :name => String.t(),
          :point =>
            GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex.t()
        }

  field(:confidence)
  field(:name)

  field(:point,
    as:
      GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p2beta1_DetectedLandmark do
  def decode(value, options) do
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p2beta1_DetectedLandmark.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p2beta1_DetectedLandmark do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
