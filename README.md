# xcodeproj_min_version

How to reproduce:

`bazel run //:BazelSampleXcodeProj`

To reproduce, simply open the project, open a sample file and wait for it to index.
After a while, a message will appear talking about the versions.
Open the `BazelSample/Main/Sources/AppDelegate+RootComponent.swift` file after indexing, and wait a moment until the error appears when importing the module. You can hold down command and click on the module to go to its reference, and the error should also appear.

The `versions.bzl` file sets the minimum version of the frameworks and the app.
If you set the minimum version to 14.0, there will be no problem.