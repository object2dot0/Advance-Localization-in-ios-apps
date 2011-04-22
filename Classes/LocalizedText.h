//
//  LocalizedText.h
//  AdvanceLocalization
//
//  Created by object2.0 on 4/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class AdvanceLocalizationViewController;

@interface LocalizedText : UIViewController {
	IBOutlet UILabel *textLabel;
	int selectedLanguage;
}

@property (assign,readwrite) int selectedLanguage;

-(IBAction) languageSelection:(id)sender;
-(NSString*) languageSelectedStringForKey:(NSString*) key;

@end
