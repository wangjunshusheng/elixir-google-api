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

defmodule GoogleApi.FactCheckTools.V1alpha1.Model.GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse do
  @moduledoc """
  Response from listing `ClaimReview` markup.

  ## Attributes

  *   `claimReviewMarkupPages` (*type:* `list(GoogleApi.FactCheckTools.V1alpha1.Model.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage.t)`, *default:* `nil`) - The result list of pages of `ClaimReview` markup.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - The next pagination token in the Search response. It should be used as the
      `page_token` for the following request. An empty value means no more
      results.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :claimReviewMarkupPages =>
            list(
              GoogleApi.FactCheckTools.V1alpha1.Model.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage.t()
            ),
          :nextPageToken => String.t()
        }

  field(:claimReviewMarkupPages,
    as:
      GoogleApi.FactCheckTools.V1alpha1.Model.GoogleFactcheckingFactchecktoolsV1alpha1ClaimReviewMarkupPage,
    type: :list
  )

  field(:nextPageToken)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.FactCheckTools.V1alpha1.Model.GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse do
  def decode(value, options) do
    GoogleApi.FactCheckTools.V1alpha1.Model.GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.FactCheckTools.V1alpha1.Model.GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end