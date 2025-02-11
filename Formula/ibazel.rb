# Copyright 2018 The Bazel Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

class Ibazel < Formula
  desc "Tool for building Bazel targets when source files change"
  homepage "https://github.com/bazelbuild/bazel-watcher"
  url "https://github.com/bazelbuild/bazel-watcher/releases/download/v0.20.0/ibazel_darwin_arm64"
  version "0.20.0"

  # To generate run:
  # curl -L -N -s https://github.com/bazelbuild/bazel-watcher/releases/download/v0.16.2/ibazel_darwin_arm64 | shasum -a 256
  # on macOS
  sha256 "a76da4f01397a9cd9cdc09c1d6c686d46642bf824c72fd931bca06236bd6ae4c"


  def install
    bin.install "ibazel_darwin_arm64" => "ibazel"
  end

  test do
    # Since ibazel loops in most cases the quickest check of validity
    # I can think of is to get the version output which happens when
    # invoked without any arguments.
    system bin/"ibazel"
  end
end
