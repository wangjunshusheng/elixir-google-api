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

defmodule GoogleApi.Jobs.V3.Model.RequestMetadata do
  @moduledoc """
  Input only. Meta information related to the job searcher or entity conducting the job search. This information is used to improve the performance of the service.

  ## Attributes

  *   `deviceInfo` (*type:* `GoogleApi.Jobs.V3.Model.DeviceInfo.t`, *default:* `nil`) - Optional. The type of device used by the job seeker at the time of the call to the service.
  *   `domain` (*type:* `String.t`, *default:* `nil`) - Required. The client-defined scope or source of the service call, which typically is the domain on which the service has been implemented and is currently being run. For example, if the service is being run by client *Foo, Inc.*, on job board www.foo.com and career site www.bar.com, then this field is set to "foo.com" for use on the job board, and "bar.com" for use on the career site. If this field isn't available for some reason, send "UNKNOWN". Any improvements to the model for a particular tenant site rely on this field being set correctly to a domain. The maximum number of allowed characters is 255.
  *   `sessionId` (*type:* `String.t`, *default:* `nil`) - Required. A unique session identification string. A session is defined as the duration of an end user's interaction with the service over a certain period. Obfuscate this field for privacy concerns before providing it to the service. If this field is not available for some reason, send "UNKNOWN". Note that any improvements to the model for a particular tenant site, rely on this field being set correctly to some unique session_id. The maximum number of allowed characters is 255.
  *   `userId` (*type:* `String.t`, *default:* `nil`) - Required. A unique user identification string, as determined by the client. To have the strongest positive impact on search quality make sure the client-level is unique. Obfuscate this field for privacy concerns before providing it to the service. If this field is not available for some reason, send "UNKNOWN". Note that any improvements to the model for a particular tenant site, rely on this field being set correctly to a unique user_id. The maximum number of allowed characters is 255.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deviceInfo => GoogleApi.Jobs.V3.Model.DeviceInfo.t(),
          :domain => String.t(),
          :sessionId => String.t(),
          :userId => String.t()
        }

  field(:deviceInfo, as: GoogleApi.Jobs.V3.Model.DeviceInfo)
  field(:domain)
  field(:sessionId)
  field(:userId)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V3.Model.RequestMetadata do
  def decode(value, options) do
    GoogleApi.Jobs.V3.Model.RequestMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V3.Model.RequestMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
