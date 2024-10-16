# xcodeproj apple_precompiled_resource_bundle bug

How to reproduce:

`bazel run //:BazelSampleXcodeProj`

Based on the principle that `apple_precompiled_resource_bundle` will compile and save the cache resources that can be reused for another test bundle, what is happening is that it is always recompiling the assets
Problem when I run tests separately, bazel ends up always recompiling the reasources.
* `bazel test //Modules/CocktailDB:CocktailDBTests`
* `bazel test //Modules/DrinkDetails:DrinkDetailsTests`

Same problem on execute tests on Xcode