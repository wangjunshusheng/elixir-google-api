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

defmodule GoogleApi.Content.V21.Model.RepricingRuleEligibleOfferMatcher do
  @moduledoc """
  Matcher that specifies eligible offers. When the USE_FEED_ATTRIBUTE option is selected, only the repricing_rule_id attribute on the product feed is used to specify offer-rule mapping. When the CUSTOM_FILTER option is selected, only the *_matcher fields are used to filter the offers for offer-rule mapping. If the CUSTOM_FILTER option is selected, an offer needs to satisfy each custom filter matcher to be eligible for a rule. Size limit: the sum of the number of entries in all the matchers should not exceed 20. For example, there can be 15 product ids and 5 brands, but not 10 product ids and 11 brands.

  ## Attributes

  *   `brandMatcher` (*type:* `GoogleApi.Content.V21.Model.RepricingRuleEligibleOfferMatcherStringMatcher.t`, *default:* `nil`) - Filter by the brand.
  *   `itemGroupIdMatcher` (*type:* `GoogleApi.Content.V21.Model.RepricingRuleEligibleOfferMatcherStringMatcher.t`, *default:* `nil`) - Filter by the item group id.
  *   `matcherOption` (*type:* `String.t`, *default:* `nil`) - Determines whether to use the custom matchers or the product feed attribute "repricing_rule_id" to specify offer-rule mapping.
  *   `offerIdMatcher` (*type:* `GoogleApi.Content.V21.Model.RepricingRuleEligibleOfferMatcherStringMatcher.t`, *default:* `nil`) - Filter by the offer id.
  *   `skipWhenOnPromotion` (*type:* `boolean()`, *default:* `nil`) - When true, the rule won't be applied to offers with active promotions.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :brandMatcher =>
            GoogleApi.Content.V21.Model.RepricingRuleEligibleOfferMatcherStringMatcher.t(),
          :itemGroupIdMatcher =>
            GoogleApi.Content.V21.Model.RepricingRuleEligibleOfferMatcherStringMatcher.t(),
          :matcherOption => String.t(),
          :offerIdMatcher =>
            GoogleApi.Content.V21.Model.RepricingRuleEligibleOfferMatcherStringMatcher.t(),
          :skipWhenOnPromotion => boolean()
        }

  field(:brandMatcher,
    as: GoogleApi.Content.V21.Model.RepricingRuleEligibleOfferMatcherStringMatcher
  )

  field(:itemGroupIdMatcher,
    as: GoogleApi.Content.V21.Model.RepricingRuleEligibleOfferMatcherStringMatcher
  )

  field(:matcherOption)

  field(:offerIdMatcher,
    as: GoogleApi.Content.V21.Model.RepricingRuleEligibleOfferMatcherStringMatcher
  )

  field(:skipWhenOnPromotion)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.RepricingRuleEligibleOfferMatcher do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.RepricingRuleEligibleOfferMatcher.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.RepricingRuleEligibleOfferMatcher do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
