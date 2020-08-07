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

defmodule GoogleApi.Language.V1.Model.EntityMention do
  @moduledoc """
  Represents a mention for an entity in the text. Currently, proper noun mentions are supported.

  ## Attributes

  *   `sentiment` (*type:* `GoogleApi.Language.V1.Model.Sentiment.t`, *default:* `nil`) - For calls to AnalyzeEntitySentiment or if AnnotateTextRequest.Features.extract_entity_sentiment is set to true, this field will contain the sentiment expressed for this mention of the entity in the provided document.
  *   `text` (*type:* `GoogleApi.Language.V1.Model.TextSpan.t`, *default:* `nil`) - The mention text.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of the entity mention.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :sentiment => GoogleApi.Language.V1.Model.Sentiment.t(),
          :text => GoogleApi.Language.V1.Model.TextSpan.t(),
          :type => String.t()
        }

  field(:sentiment, as: GoogleApi.Language.V1.Model.Sentiment)
  field(:text, as: GoogleApi.Language.V1.Model.TextSpan)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Language.V1.Model.EntityMention do
  def decode(value, options) do
    GoogleApi.Language.V1.Model.EntityMention.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Language.V1.Model.EntityMention do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
