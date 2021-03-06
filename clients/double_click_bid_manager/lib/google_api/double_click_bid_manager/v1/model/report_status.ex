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

defmodule GoogleApi.DoubleClickBidManager.V1.Model.ReportStatus do
  @moduledoc """
  Report status.

  ## Attributes

  *   `failure` (*type:* `GoogleApi.DoubleClickBidManager.V1.Model.ReportFailure.t`, *default:* `nil`) - If the report failed, this records the cause.
  *   `finishTimeMs` (*type:* `String.t`, *default:* `nil`) - The time when this report either completed successfully or failed.
  *   `format` (*type:* `String.t`, *default:* `nil`) - The file type of the report.
  *   `state` (*type:* `String.t`, *default:* `nil`) - The state of the report.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :failure => GoogleApi.DoubleClickBidManager.V1.Model.ReportFailure.t(),
          :finishTimeMs => String.t(),
          :format => String.t(),
          :state => String.t()
        }

  field(:failure, as: GoogleApi.DoubleClickBidManager.V1.Model.ReportFailure)
  field(:finishTimeMs)
  field(:format)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.DoubleClickBidManager.V1.Model.ReportStatus do
  def decode(value, options) do
    GoogleApi.DoubleClickBidManager.V1.Model.ReportStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DoubleClickBidManager.V1.Model.ReportStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
