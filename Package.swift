// swift-tools-version:5.3

// Copyright 2025 Google LLC.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import PackageDescription

let package = Package(
  name: "InMobiAdapter",
  platforms: [.iOS(.v12)],
  products: [
    .library(
      name: "InMobiAdapterTarget",
      targets: ["InMobiAdapterTarget", "InMobi-iOS-SDK"]
    )
  ],
  targets: [
    .target(
      name: "InMobiAdapterTarget",
      dependencies: [
        .target(name: "InMobiAdapter"),
      ],
      path: "InMobiAdapterTarget"
    ),
    .binaryTarget(
      name: "InMobiAdapter",
      url:
        "https://dl.google.com/googleadmobadssdk/mediation/ios/inmobi/InMobiAdapter-11.0.0.0.zip",
      checksum: "ea85bb36a3568037a5cb83fbd44033fbc3185a8b85e7288c7375a45c690af2ea"
    ),
    .binaryTarget(
      name: "InMobi-iOS-SDK",
      url:
        "https://dl.inmobi.com/inmobi-sdk/IM/InMobi-iOS-SDK-11.0.0.zip",
      checksum: "feca177cc17ee472c736268873dc66e157484ffe6add981375b802f4dc9bc1c0"
    ),
  ]
)
