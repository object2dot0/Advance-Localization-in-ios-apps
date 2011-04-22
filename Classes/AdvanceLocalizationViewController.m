//
//  AdvanceLocalizationViewController.m
//  AdvanceLocalization
//
//  Created by object2.0 on 4/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "AdvanceLocalizationViewController.h"
#import "LocalizedText.h"
#import "Common.h"



@implementation AdvanceLocalizationViewController



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	
	english.tag=ENGLSIH_LANGUAGE;
	chinese.tag=CHINESE_LANGUAGE;
	french.tag=FRENCH_LANGUAGE;
	currentLanguage=ENGLSIH_LANGUAGE;
    [super viewDidLoad];
}



/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/


-(IBAction) languageChanged:(id)sender
{
	UIButton *clickedButton=(UIButton *)sender;
	
	switch (clickedButton.tag) {
		case ENGLSIH_LANGUAGE:
			currentLanguage=ENGLSIH_LANGUAGE;
			break;
		case CHINESE_LANGUAGE:
			currentLanguage=CHINESE_LANGUAGE;
			break;
		case FRENCH_LANGUAGE:
			currentLanguage=FRENCH_LANGUAGE;
			break;
		default:
			break;
	}


	
}

-(IBAction) showText:(id)sender
{
//	textClass=[[LocalizedText alloc] initWithNibName:"LocalizedText" bundle:nil];
//	[self.view addSubview:textClass];

	textClass=[[LocalizedText alloc ] init];

	NSLog(@"ShowText called");
	textClass.selectedLanguage=currentLanguage;
	[self.view addSubview:textClass.view] ;
	NSLog(@"txtclaslan=%d",textClass.selectedLanguage);
	
	
	
}



- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[textClass release];
    [super dealloc];
}

@end
