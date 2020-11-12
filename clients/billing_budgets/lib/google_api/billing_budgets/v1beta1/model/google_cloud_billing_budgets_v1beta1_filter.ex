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

defmodule GoogleApi.BillingBudgets.V1beta1.Model.GoogleCloudBillingBudgetsV1beta1Filter do
  @moduledoc """
  A filter for a budget, limiting the scope of the cost to calculate.

  ## Attributes

  *   `creditTypes` (*type:* `list(String.t)`, *default:* `nil`) - Optional. If Filter.credit_types_treatment is INCLUDE_SPECIFIED_CREDITS, this is a list of credit types to be subtracted from gross cost to determine the spend for threshold calculations. If Filter.credit_types_treatment is **not** INCLUDE_SPECIFIED_CREDITS, this field must be empty. See [a list of acceptable credit type values](https://cloud.google.com/billing/docs/how-to/export-data-bigquery-tables#credits-type).
  *   `creditTypesTreatment` (*type:* `String.t`, *default:* `nil`) - Optional. If not set, default behavior is `INCLUDE_ALL_CREDITS`.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. A single label and value pair specifying that usage from only this set of labeled resources should be included in the budget. Currently, multiple entries or multiple values per entry are not allowed. If omitted, the report will include all labeled and unlabeled usage.
  *   `projects` (*type:* `list(String.t)`, *default:* `nil`) - Optional. A set of projects of the form `projects/{project}`, specifying that usage from only this set of projects should be included in the budget. If omitted, the report will include all usage for the billing account, regardless of which project the usage occurred on. Only zero or one project can be specified currently.
  *   `services` (*type:* `list(String.t)`, *default:* `nil`) - Optional. A set of services of the form `services/{service_id}`, specifying that usage from only this set of services should be included in the budget. If omitted, the report will include usage for all the services. The service names are available through the Catalog API: https://cloud.google.com/billing/v1/how-tos/catalog-api.
  *   `subaccounts` (*type:* `list(String.t)`, *default:* `nil`) - Optional. A set of subaccounts of the form `billingAccounts/{account_id}`, specifying that usage from only this set of subaccounts should be included in the budget. If a subaccount is set to the name of the parent account, usage from the parent account will be included. If omitted, the report will include usage from the parent account and all subaccounts, if they exist.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creditTypes => list(String.t()),
          :creditTypesTreatment => String.t(),
          :labels => map(),
          :projects => list(String.t()),
          :services => list(String.t()),
          :subaccounts => list(String.t())
        }

  field(:creditTypes, type: :list)
  field(:creditTypesTreatment)
  field(:labels, type: :map)
  field(:projects, type: :list)
  field(:services, type: :list)
  field(:subaccounts, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.BillingBudgets.V1beta1.Model.GoogleCloudBillingBudgetsV1beta1Filter do
  def decode(value, options) do
    GoogleApi.BillingBudgets.V1beta1.Model.GoogleCloudBillingBudgetsV1beta1Filter.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.BillingBudgets.V1beta1.Model.GoogleCloudBillingBudgetsV1beta1Filter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
