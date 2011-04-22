//
//  AdvanceLocalizationViewController.h
//  AdvanceLocalization
//
//  Created by object2.0 on 4/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class LocalizedText;

@interface AdvanceLocalizationViewController : UIViewController {
	
	IBOutlet UIButton* english;
	IBOutlet UIButton* chinese;
	IBOutlet UIButton* french;
	int currentLanguage;
	LocalizedText *textClass;

}

-(IBAction) languageChanged:(id)sender;
-(IBAction) showText:(id)sender;

@end

