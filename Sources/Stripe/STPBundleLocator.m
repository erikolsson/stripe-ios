//
//  STPBundleLocator.m
//  Stripe
//
//  Created by Brian Dorfman on 8/31/16.
//  Copyright © 2016 Stripe, Inc. All rights reserved.
//

#import "STPBundleLocator.h"

/**
 Using a private class to ensure that it can't be subclassed, which may
 change the result of `bundleForClass`
 */
@interface STPBundleLocatorInternal : NSObject
@end
@implementation STPBundleLocatorInternal
@end

@implementation STPBundleLocator

+ (NSBundle *)stripeResourcesBundle {
    /**
     Places to check:
     1. Stripe.bundle (for manual static installations, Fabric, and framework-less Cocoapods)
     2. Stripe.framework/Stripe.bundle (for framework-based Cocoapods)
     3. Stripe.framework (for Carthage, manual dynamic installations)
     4. main bundle (for people dragging all our files into their project)
     **/
    
    static NSBundle *ourBundle;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        ourBundle = Stripe_Stripe_SWIFTPM_MODULE_BUNDLE();
    });

    return ourBundle;
}

@end
