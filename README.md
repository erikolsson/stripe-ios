# Stripe-iOS 14.0.1 with SPM support

This is a fork of [Stripe 14.0.1](https://github.com/stripe/stripe-ios/releases/tag/v14.0.1), using the files from [commit 7c116ff7509ba050f39bfb23f151a66d44a562b0](https://github.com/stripe/stripe-ios/commit/7c116ff7509ba050f39bfb23f151a66d44a562b0), but with added support for Swift Package Manager.

There is one code change, in `STPBundleLocator.m`, see diff: [ours](https://github.com/erikolsson/stripe-ios/blob/main/Sources/Stripe/STPBundleLocator.m) vs [theirs](https://github.com/stripe/stripe-ios/blob/7c116ff7509ba050f39bfb23f151a66d44a562b0/Stripe/STPBundleLocator.m)
