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

defmodule GoogleApi.CloudProfiler.V2.Model.Deployment do
  @moduledoc """
  Deployment contains the deployment identification information.

  ## Attributes

  *   `labels` (*type:* `map()`, *default:* `nil`) - Labels identify the deployment within the user universe and same target. Validation regex for label names: `^[a-z0-9]([a-z0-9-]{0,61}[a-z0-9])?$`. Value for an individual label must be <= 512 bytes, the total size of all label names and values must be <= 1024 bytes. Label named "language" can be used to record the programming language of the profiled deployment. The standard choices for the value include "java", "go", "python", "ruby", "nodejs", "php", "dotnet". For deployments running on Google Cloud Platform, "zone" or "region" label should be present describing the deployment location. An example of a zone is "us-central1-a", an example of a region is "us-central1" or "us-central".
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - Project ID is the ID of a cloud project. Validation regex: `^a-z{4,61}[a-z0-9]$`.
  *   `target` (*type:* `String.t`, *default:* `nil`) - Target is the service name used to group related deployments: * Service name for GAE Flex / Standard. * Cluster and container name for GKE. * User-specified string for direct GCE profiling (e.g. Java). * Job name for Dataflow. Validation regex: `^[a-z]([-a-z0-9_.]{0,253}[a-z0-9])?$`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :labels => map(),
          :projectId => String.t(),
          :target => String.t()
        }

  field(:labels, type: :map)
  field(:projectId)
  field(:target)
end

defimpl Poison.Decoder, for: GoogleApi.CloudProfiler.V2.Model.Deployment do
  def decode(value, options) do
    GoogleApi.CloudProfiler.V2.Model.Deployment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudProfiler.V2.Model.Deployment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
