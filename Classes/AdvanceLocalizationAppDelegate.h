//
//  AdvanceLocalizationAppDelegate.h
//  AdvanceLocalization
//
//  Created by object2.0 on 4/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AdvanceLocalizationViewController;

@interface AdvanceLocalizationAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    AdvanceLocalizationViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet AdvanceLocalizationViewController *viewController;

@end

