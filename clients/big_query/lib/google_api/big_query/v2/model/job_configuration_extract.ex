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

defmodule GoogleApi.BigQuery.V2.Model.JobConfigurationExtract do
  @moduledoc """


  ## Attributes

  *   `compression` (*type:* `String.t`, *default:* `nil`) - [Optional] The compression type to use for exported files. Possible values include GZIP, DEFLATE, SNAPPY, and NONE. The default value is NONE. DEFLATE and SNAPPY are only supported for Avro. Not applicable when extracting models.
  *   `destinationFormat` (*type:* `String.t`, *default:* `nil`) - [Optional] The exported file format. Possible values include CSV, NEWLINE_DELIMITED_JSON, PARQUET or AVRO for tables and ML_TF_SAVED_MODEL or ML_XGBOOST_BOOSTER for models. The default value for tables is CSV. Tables with nested or repeated fields cannot be exported as CSV. The default value for models is ML_TF_SAVED_MODEL.
  *   `destinationUri` (*type:* `String.t`, *default:* `nil`) - [Pick one] DEPRECATED: Use destinationUris instead, passing only one URI as necessary. The fully-qualified Google Cloud Storage URI where the extracted table should be written.
  *   `destinationUris` (*type:* `list(String.t)`, *default:* `nil`) - [Pick one] A list of fully-qualified Google Cloud Storage URIs where the extracted table should be written.
  *   `fieldDelimiter` (*type:* `String.t`, *default:* `nil`) - [Optional] Delimiter to use between fields in the exported data. Default is ','. Not applicable when extracting models.
  *   `printHeader` (*type:* `boolean()`, *default:* `true`) - [Optional] Whether to print out a header row in the results. Default is true. Not applicable when extracting models.
  *   `sourceModel` (*type:* `GoogleApi.BigQuery.V2.Model.ModelReference.t`, *default:* `nil`) - A reference to the model being exported.
  *   `sourceTable` (*type:* `GoogleApi.BigQuery.V2.Model.TableReference.t`, *default:* `nil`) - A reference to the table being exported.
  *   `useAvroLogicalTypes` (*type:* `boolean()`, *default:* `nil`) - [Optional] If destinationFormat is set to "AVRO", this flag indicates whether to enable extracting applicable column types (such as TIMESTAMP) to their corresponding AVRO logical types (timestamp-micros), instead of only using their raw types (avro-long). Not applicable when extracting models.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :compression => String.t(),
          :destinationFormat => String.t(),
          :destinationUri => String.t(),
          :destinationUris => list(String.t()),
          :fieldDelimiter => String.t(),
          :printHeader => boolean(),
          :sourceModel => GoogleApi.BigQuery.V2.Model.ModelReference.t(),
          :sourceTable => GoogleApi.BigQuery.V2.Model.TableReference.t(),
          :useAvroLogicalTypes => boolean()
        }

  field(:compression)
  field(:destinationFormat)
  field(:destinationUri)
  field(:destinationUris, type: :list)
  field(:fieldDelimiter)
  field(:printHeader)
  field(:sourceModel, as: GoogleApi.BigQuery.V2.Model.ModelReference)
  field(:sourceTable, as: GoogleApi.BigQuery.V2.Model.TableReference)
  field(:useAvroLogicalTypes)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.JobConfigurationExtract do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.JobConfigurationExtract.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.JobConfigurationExtract do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
