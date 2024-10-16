workspace(name = "Sample")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "build_bazel_rules_swift",
    strip_prefix = "rules_swift-18e66e8ce6709edee7c648c1a838166460d2e930",
    urls = ["https://github.com/bazelbuild/rules_swift/archive/18e66e8ce6709edee7c648c1a838166460d2e930.tar.gz"],
)

# http_archive(
#     name = "build_bazel_rules_swift",
#     sha256 = "9919ed1d8dae509645bfd380537ae6501528d8de971caebed6d5185b9970dc4d",
#     url = "https://github.com/bazelbuild/rules_swift/releases/download/2.1.1/rules_swift.2.1.1.tar.gz",
# )

load(
    "@build_bazel_rules_swift//swift:repositories.bzl",
    "swift_rules_dependencies",
)

swift_rules_dependencies()

load(
    "@build_bazel_rules_swift//swift:extras.bzl",
    "swift_rules_extra_dependencies",
)

swift_rules_extra_dependencies()

load(
    "@build_bazel_apple_support//lib:repositories.bzl",
    "apple_support_dependencies",
)

apple_support_dependencies()

http_archive(
    name = "build_bazel_rules_apple",
    strip_prefix = "rules_apple-2e45cefc23c1d7744d11be8fa8ba54d48b47465a",
    urls = ["https://github.com/bazelbuild/rules_apple/archive/2e45cefc23c1d7744d11be8fa8ba54d48b47465a.tar.gz"],
)

load(
    "@build_bazel_rules_apple//apple:repositories.bzl",
    "apple_rules_dependencies",
)

apple_rules_dependencies()

load(
    "@build_bazel_rules_apple//apple:apple.bzl",
    "provisioning_profile_repository",
)

provisioning_profile_repository(
    name = "local_provisioning_profiles",
)

http_archive(
    name = "rules_xcodeproj",
    integrity = "sha256-b+AKGo9kJFkcN52bTraVuIu6hKlTEe/Y+LAHkhXs29o=",
    url = "https://github.com/MobileNativeFoundation/rules_xcodeproj/releases/download/2.7.0/release.tar.gz",
)

load(
    "@rules_xcodeproj//xcodeproj:repositories.bzl",
    "xcodeproj_rules_dependencies",
)

xcodeproj_rules_dependencies()
