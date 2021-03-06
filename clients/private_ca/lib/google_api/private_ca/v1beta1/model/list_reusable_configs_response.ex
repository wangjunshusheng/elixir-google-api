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

defmodule GoogleApi.PrivateCA.V1beta1.Model.ListReusableConfigsResponse do
  @moduledoc """
  Response message for CertificateAuthorityService.ListReusableConfigs.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token to retrieve next page of results. Pass this value in ListReusableConfigsRequest.next_page_token to retrieve the next page of results.
  *   `reusableConfigs` (*type:* `list(GoogleApi.PrivateCA.V1beta1.Model.ReusableConfig.t)`, *default:* `nil`) - The list of ReusableConfigs.
  *   `unreachable` (*type:* `list(String.t)`, *default:* `nil`) - A list of locations (e.g. "us-west1") that could not be reached.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t(),
          :reusableConfigs => list(GoogleApi.PrivateCA.V1beta1.Model.ReusableConfig.t()),
          :unreachable => list(String.t())
        }

  field(:nextPageToken)
  field(:reusableConfigs, as: GoogleApi.PrivateCA.V1beta1.Model.ReusableConfig, type: :list)
  field(:unreachable, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.PrivateCA.V1beta1.Model.ListReusableConfigsResponse do
  def decode(value, options) do
    GoogleApi.PrivateCA.V1beta1.Model.ListReusableConfigsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PrivateCA.V1beta1.Model.ListReusableConfigsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
