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

defmodule GoogleApi.Fitness.V1.Model.Session do
  @moduledoc """
  Sessions contain metadata, such as a user-friendly name and time interval information.

  ## Attributes

  *   `activeTimeMillis` (*type:* `String.t`, *default:* `nil`) - Session active time. While start_time_millis and end_time_millis define the full session time, the active time can be shorter and specified by active_time_millis. If the inactive time during the session is known, it should also be inserted via a com.google.activity.segment data point with a STILL activity value
  *   `activityType` (*type:* `integer()`, *default:* `nil`) - The type of activity this session represents.
  *   `application` (*type:* `GoogleApi.Fitness.V1.Model.Application.t`, *default:* `nil`) - The application that created the session.
  *   `description` (*type:* `String.t`, *default:* `nil`) - A description for this session.
  *   `endTimeMillis` (*type:* `String.t`, *default:* `nil`) - An end time, in milliseconds since epoch, inclusive.
  *   `id` (*type:* `String.t`, *default:* `nil`) - A client-generated identifier that is unique across all sessions owned by this particular user.
  *   `modifiedTimeMillis` (*type:* `String.t`, *default:* `nil`) - A timestamp that indicates when the session was last modified.
  *   `name` (*type:* `String.t`, *default:* `nil`) - A human readable name of the session.
  *   `startTimeMillis` (*type:* `String.t`, *default:* `nil`) - A start time, in milliseconds since epoch, inclusive.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :activeTimeMillis => String.t(),
          :activityType => integer(),
          :application => GoogleApi.Fitness.V1.Model.Application.t(),
          :description => String.t(),
          :endTimeMillis => String.t(),
          :id => String.t(),
          :modifiedTimeMillis => String.t(),
          :name => String.t(),
          :startTimeMillis => String.t()
        }

  field(:activeTimeMillis)
  field(:activityType)
  field(:application, as: GoogleApi.Fitness.V1.Model.Application)
  field(:description)
  field(:endTimeMillis)
  field(:id)
  field(:modifiedTimeMillis)
  field(:name)
  field(:startTimeMillis)
end

defimpl Poison.Decoder, for: GoogleApi.Fitness.V1.Model.Session do
  def decode(value, options) do
    GoogleApi.Fitness.V1.Model.Session.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Fitness.V1.Model.Session do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
