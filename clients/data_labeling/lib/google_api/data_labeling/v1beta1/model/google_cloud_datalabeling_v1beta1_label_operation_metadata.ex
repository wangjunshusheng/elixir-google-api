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

defmodule GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelOperationMetadata do
  @moduledoc """
  Metadata of a labeling operation, such as LabelImage or LabelVideo. Next tag: 23

  ## Attributes

  *   `annotatedDataset` (*type:* `String.t`, *default:* `nil`) - Output only. The name of annotated dataset in format "projects/*/datasets/*/annotatedDatasets/*".
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp when labeling request was created.
  *   `dataset` (*type:* `String.t`, *default:* `nil`) - Output only. The name of dataset to be labeled. "projects/*/datasets/*"
  *   `imageBoundingBoxDetails` (*type:* `GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelImageBoundingBoxOperationMetadata.t`, *default:* `nil`) - Details of label image bounding box operation.
  *   `imageBoundingPolyDetails` (*type:* `GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelImageBoundingPolyOperationMetadata.t`, *default:* `nil`) - Details of label image bounding poly operation.
  *   `imageClassificationDetails` (*type:* `GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelImageClassificationOperationMetadata.t`, *default:* `nil`) - Details of label image classification operation.
  *   `imageOrientedBoundingBoxDetails` (*type:* `GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelImageOrientedBoundingBoxOperationMetadata.t`, *default:* `nil`) - Details of label image oriented bounding box operation.
  *   `imagePolylineDetails` (*type:* `GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelImagePolylineOperationMetadata.t`, *default:* `nil`) - Details of label image polyline operation.
  *   `imageSegmentationDetails` (*type:* `GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelImageSegmentationOperationMetadata.t`, *default:* `nil`) - Details of label image segmentation operation.
  *   `partialFailures` (*type:* `list(GoogleApi.DataLabeling.V1beta1.Model.GoogleRpcStatus.t)`, *default:* `nil`) - Output only. Partial failures encountered. E.g. single files that couldn't be read. Status details field will contain standard GCP error details.
  *   `progressPercent` (*type:* `integer()`, *default:* `nil`) - Output only. Progress of label operation. Range: [0, 100].
  *   `textClassificationDetails` (*type:* `GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelTextClassificationOperationMetadata.t`, *default:* `nil`) - Details of label text classification operation.
  *   `textEntityExtractionDetails` (*type:* `GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelTextEntityExtractionOperationMetadata.t`, *default:* `nil`) - Details of label text entity extraction operation.
  *   `videoClassificationDetails` (*type:* `GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelVideoClassificationOperationMetadata.t`, *default:* `nil`) - Details of label video classification operation.
  *   `videoEventDetails` (*type:* `GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelVideoEventOperationMetadata.t`, *default:* `nil`) - Details of label video event operation.
  *   `videoObjectDetectionDetails` (*type:* `GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelVideoObjectDetectionOperationMetadata.t`, *default:* `nil`) - Details of label video object detection operation.
  *   `videoObjectTrackingDetails` (*type:* `GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelVideoObjectTrackingOperationMetadata.t`, *default:* `nil`) - Details of label video object tracking operation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotatedDataset => String.t(),
          :createTime => DateTime.t(),
          :dataset => String.t(),
          :imageBoundingBoxDetails =>
            GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelImageBoundingBoxOperationMetadata.t(),
          :imageBoundingPolyDetails =>
            GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelImageBoundingPolyOperationMetadata.t(),
          :imageClassificationDetails =>
            GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelImageClassificationOperationMetadata.t(),
          :imageOrientedBoundingBoxDetails =>
            GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelImageOrientedBoundingBoxOperationMetadata.t(),
          :imagePolylineDetails =>
            GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelImagePolylineOperationMetadata.t(),
          :imageSegmentationDetails =>
            GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelImageSegmentationOperationMetadata.t(),
          :partialFailures => list(GoogleApi.DataLabeling.V1beta1.Model.GoogleRpcStatus.t()),
          :progressPercent => integer(),
          :textClassificationDetails =>
            GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelTextClassificationOperationMetadata.t(),
          :textEntityExtractionDetails =>
            GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelTextEntityExtractionOperationMetadata.t(),
          :videoClassificationDetails =>
            GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelVideoClassificationOperationMetadata.t(),
          :videoEventDetails =>
            GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelVideoEventOperationMetadata.t(),
          :videoObjectDetectionDetails =>
            GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelVideoObjectDetectionOperationMetadata.t(),
          :videoObjectTrackingDetails =>
            GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelVideoObjectTrackingOperationMetadata.t()
        }

  field(:annotatedDataset)
  field(:createTime, as: DateTime)
  field(:dataset)

  field(:imageBoundingBoxDetails,
    as:
      GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelImageBoundingBoxOperationMetadata
  )

  field(:imageBoundingPolyDetails,
    as:
      GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelImageBoundingPolyOperationMetadata
  )

  field(:imageClassificationDetails,
    as:
      GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelImageClassificationOperationMetadata
  )

  field(:imageOrientedBoundingBoxDetails,
    as:
      GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelImageOrientedBoundingBoxOperationMetadata
  )

  field(:imagePolylineDetails,
    as:
      GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelImagePolylineOperationMetadata
  )

  field(:imageSegmentationDetails,
    as:
      GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelImageSegmentationOperationMetadata
  )

  field(:partialFailures, as: GoogleApi.DataLabeling.V1beta1.Model.GoogleRpcStatus, type: :list)
  field(:progressPercent)

  field(:textClassificationDetails,
    as:
      GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelTextClassificationOperationMetadata
  )

  field(:textEntityExtractionDetails,
    as:
      GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelTextEntityExtractionOperationMetadata
  )

  field(:videoClassificationDetails,
    as:
      GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelVideoClassificationOperationMetadata
  )

  field(:videoEventDetails,
    as:
      GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelVideoEventOperationMetadata
  )

  field(:videoObjectDetectionDetails,
    as:
      GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelVideoObjectDetectionOperationMetadata
  )

  field(:videoObjectTrackingDetails,
    as:
      GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelVideoObjectTrackingOperationMetadata
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelOperationMetadata do
  def decode(value, options) do
    GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelOperationMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelOperationMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
