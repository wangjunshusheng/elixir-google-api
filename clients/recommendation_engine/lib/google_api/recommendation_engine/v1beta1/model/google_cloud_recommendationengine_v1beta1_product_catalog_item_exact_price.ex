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

defmodule GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice do
  @moduledoc """
  Exact product price.

  ## Attributes

  *   `displayPrice` (*type:* `number()`, *default:* `nil`) - Optional. Display price of the product.
  *   `originalPrice` (*type:* `number()`, *default:* `nil`) - Optional. Price of the product without any discount. If zero, by default set to be the 'displayPrice'.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayPrice => number(),
          :originalPrice => number()
        }

  field(:displayPrice)
  field(:originalPrice)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice do
  def decode(value, options) do
    GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
