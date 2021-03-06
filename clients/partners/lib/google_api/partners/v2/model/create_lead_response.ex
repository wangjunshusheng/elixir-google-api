# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Partners.V2.Model.CreateLeadResponse do
  @moduledoc """
  Response message for CreateLead.

  ## Attributes

  - lead (Lead): Lead that was created depending on the outcome of &lt;a href&#x3D;\&quot;https://www.google.com/recaptcha/\&quot;&gt;reCaptcha&lt;/a&gt; validation. Defaults to: `null`.
  - recaptchaStatus (String.t): The outcome of &lt;a href&#x3D;\&quot;https://www.google.com/recaptcha/\&quot;&gt;reCaptcha&lt;/a&gt; validation. Defaults to: `null`.
    - Enum - one of [RECAPTCHA_STATUS_UNSPECIFIED, RS_NOT_NEEDED, RS_PASSED, RS_FAILED]
  - responseMetadata (ResponseMetadata): Current response metadata. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :lead => GoogleApi.Partners.V2.Model.Lead.t(),
          :recaptchaStatus => any(),
          :responseMetadata => GoogleApi.Partners.V2.Model.ResponseMetadata.t()
        }

  field(:lead, as: GoogleApi.Partners.V2.Model.Lead)
  field(:recaptchaStatus)
  field(:responseMetadata, as: GoogleApi.Partners.V2.Model.ResponseMetadata)
end

defimpl Poison.Decoder, for: GoogleApi.Partners.V2.Model.CreateLeadResponse do
  def decode(value, options) do
    GoogleApi.Partners.V2.Model.CreateLeadResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Partners.V2.Model.CreateLeadResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
