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

defmodule GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox do
  @moduledoc """
  Normalized bounding box. The normalized vertex coordinates are relative to the original image. Range: [0, 1].

  ## Attributes

  *   `bottom` (*type:* `number()`, *default:* `nil`) - Bottom Y coordinate.
  *   `left` (*type:* `number()`, *default:* `nil`) - Left X coordinate.
  *   `right` (*type:* `number()`, *default:* `nil`) - Right X coordinate.
  *   `top` (*type:* `number()`, *default:* `nil`) - Top Y coordinate.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bottom => number(),
          :left => number(),
          :right => number(),
          :top => number()
        }

  field(:bottom)
  field(:left)
  field(:right)
  field(:top)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox do
  def decode(value, options) do
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
