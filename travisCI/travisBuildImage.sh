#!/bin/bash
# Copyright 2020 Efabless Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
echo "Building The Docker Image..."
export PDK_ROOT=$(pwd)/pdks
export RUN_ROOT=$(pwd)
if [[ $TRAVIS_BRANCH == "develop-latest_tools_x" ]]; then
	export IMAGE_NAME=efabless/openlane:$TRAVIS_BRANCH-$TOOL
else
    if [[ $TRAVIS_PULL_REQUEST != "false" ]]; then
        export IMAGE_NAME=efabless/openlane:$TRAVIS_BRANCH-$TRAVIS_PULL_REQUEST
    else
        export IMAGE_NAME=efabless/openlane:$TRAVIS_BRANCH
    fi
fi
echo "IMAGE NAME: $IMAGE_NAME"
echo $PDK_ROOT
echo $RUN_ROOT

cd docker_build/
make merge

exit 0