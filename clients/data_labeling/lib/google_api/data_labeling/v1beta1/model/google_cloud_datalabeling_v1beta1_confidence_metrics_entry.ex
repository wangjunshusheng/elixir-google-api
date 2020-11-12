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

defmodule GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry do
  @moduledoc """


  ## Attributes

  *   `confidenceThreshold` (*type:* `number()`, *default:* `nil`) - Threshold used for this entry. For classification tasks, this is a classification threshold: a predicted label is categorized as positive or negative (in the context of this point on the PR curve) based on whether the label's score meets this threshold. For image object detection (bounding box) tasks, this is the [intersection-over-union (IOU)](/vision/automl/object-detection/docs/evaluate#intersection-over-union) threshold for the context of this point on the PR curve.
  *   `f1Score` (*type:* `number()`, *default:* `nil`) - Harmonic mean of recall and precision.
  *   `f1ScoreAt1` (*type:* `number()`, *default:* `nil`) - The harmonic mean of recall_at1 and precision_at1.
  *   `f1ScoreAt5` (*type:* `number()`, *default:* `nil`) - The harmonic mean of recall_at5 and precision_at5.
  *   `precision` (*type:* `number()`, *default:* `nil`) - Precision value.
  *   `precisionAt1` (*type:* `number()`, *default:* `nil`) - Precision value for entries with label that has highest score.
  *   `precisionAt5` (*type:* `number()`, *default:* `nil`) - Precision value for entries with label that has highest 5 scores.
  *   `recall` (*type:* `number()`, *default:* `nil`) - Recall value.
  *   `recallAt1` (*type:* `number()`, *default:* `nil`) - Recall value for entries with label that has highest score.
  *   `recallAt5` (*type:* `number()`, *default:* `nil`) - Recall value for entries with label that has highest 5 scores.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :confidenceThreshold => number(),
          :f1Score => number(),
          :f1ScoreAt1 => number(),
          :f1ScoreAt5 => number(),
          :precision => number(),
          :precisionAt1 => number(),
          :precisionAt5 => number(),
          :recall => number(),
          :recallAt1 => number(),
          :recallAt5 => number()
        }

  field(:confidenceThreshold)
  field(:f1Score)
  field(:f1ScoreAt1)
  field(:f1ScoreAt5)
  field(:precision)
  field(:precisionAt1)
  field(:precisionAt5)
  field(:recall)
  field(:recallAt1)
  field(:recallAt5)
end

defimpl Poison.Decoder,
  for: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry do
  def decode(value, options) do
    GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end