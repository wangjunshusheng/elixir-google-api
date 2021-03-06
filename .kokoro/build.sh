#!/usr/bin/env bash
# Copyright 2018 Google Inc.
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

set -eo pipefail

pushd $(dirname "$0")/..

mkdir .cache
export TEMPDIR=$(pwd)/.cache
export TEMPLATE=gax

# run generator tests
if [ "${TEST_GENERATOR}" == "true" ]; then
    mix deps.get
    mix test --include external
fi

# run gax tests
pushd clients/gax
mix deps.get
mix test
popd

# create the test client
if [ "${TEST_GENERATOR}" == "true" ]; then
    mix google_apis.build TestClient
    pushd clients/test_client
    mix deps.get
    mix test
    popd
fi

popd