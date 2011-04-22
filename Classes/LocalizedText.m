//
//  LocalizedText.m
//  AdvanceLocalization
//
//  Created by object2.0 on 4/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "LocalizedText.h"
#import "AdvanceLocalizationViewController.h"
#import "Common.h"

@implementation LocalizedText
@synthesize selectedLanguage;

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	
	textLabel.text=[self languageSelectedStringForKey:@"Welcome to Advance Localization"];
    [super viewDidLoad];
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

-(IBAction) languageSelection:(id)sender
{
	
	[self.view removeFromSuperview];
	[self dealloc];

}


-(NSString*) languageSelectedStringForKey:(NSString*) key
{

	NSString *path;
	if(selectedLanguage==ENGLSIH_LANGUAGE)
		path = [[NSBundle mainBundle] pathForResource:@"English" ofType:@"lproj"];
	else if(selectedLanguage==CHINESE_LANGUAGE)
		path = [[NSBundle mainBundle] pathForResource:@"zh" ofType:@"lproj"];
	else if(selectedLanguage==FRENCH_LANGUAGE)
		path = [[NSBundle mainBundle] pathForResource:@"fr" ofType:@"lproj"];
	
	NSBundle* languageBundle = [NSBundle bundleWithPath:path];
	NSString* str=[languageBundle localizedStringForKey:key value:@"" table:nil];
	return str;
}


- (void)dealloc {
	
    [super dealloc];
}


@end
