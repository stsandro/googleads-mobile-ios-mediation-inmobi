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
        "https://dl.google.com/googleadmobadssdk/mediation/ios/inmobi/InMobiAdapter-10.8.8.0.zip",
      checksum: "96525e393eb97f3b392943f17cd69a8641c486bc3da71aaa675678988f99d797"
    ),
    .binaryTarget(
      name: "InMobi-iOS-SDK",
      url:
        "https://dl.inmobi.com/inmobi-sdk/IM/InMobi-iOS-SDK-10.8.8.zip",
      checksum: "638166a04eb3940b2caa968fc4f5cbbc42336416db430cab45db95070d78817b"
    ),
  ]
)
