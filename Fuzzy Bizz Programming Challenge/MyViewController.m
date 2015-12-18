//
//  MyViewController.m
//  Fuzzy Bizz Progamming Challenge
//
//  Created by Faddah Steve Wolf on 12/01/2015.
//  Copyright (c) 2015 186,000 mi/sec productions. All rights reserved.
//

#import "MyViewController.h"

@implementation MyViewController
@synthesize label;
@synthesize textField;
@synthesize userName=_userName;
@synthesize challengeAnswerView=_challengeAnswerView;
@synthesize challengeOutputText=_challengeOutputText;



- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    if (theTextField == self.textField) {
        [theTextField resignFirstResponder];
    }
    return YES;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setTextField:nil];
    [self setLabel:nil];
//    self->challengeAnswerView = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)changeName:(id)sender {
    
    self.userName = self.textField.text;
    
    NSString *nameString = self.userName;
    if ([nameString length] == 0) {
        nameString = @"Challenge User";
    }
    NSString *greeting = [[NSString alloc] initWithFormat:@"Great, %@! Now press the Test button to see the answer to the Challenge results displayed.", nameString];
    self.label.text = greeting;
    // [greeting release];
}
    
- (IBAction)runChallenge:(id)sender {
    
    self.userName = self.textField.text;
    
    NSString *nameString = self.userName;
    if ([nameString length] == 0) {
        nameString = @"Challenge User";
    }
    
    NSString *challenge = [[NSString alloc] initWithFormat:@"Here are the results, %@: \n\n", nameString];
    self.challengeAnswerView.text = challenge;
    [NSThread sleepForTimeInterval:0.50];
      
    for (int i = 1; i < 201; i++) {
        
        // [NSThread sleepForTimeInterval:0.25];
        
        if ((i % 3 == 0) && (i % 5 == 0)) {
            NSString *fuzzyBizz = [[NSString alloc] initWithFormat:@"FuzzyBizz  "];
            self.challengeAnswerView.text = [self.challengeAnswerView.text stringByAppendingString: fuzzyBizz];
        }
        
        else if (i % 5 == 0) { 
            NSString *bizz = [[NSString alloc] initWithFormat:@"Bizz  "];
            self.challengeAnswerView.text = [self.challengeAnswerView.text stringByAppendingString: bizz];
        }
        
        else if (i % 3 == 0) { 
            NSString *fuzzy = [[NSString alloc] initWithFormat:@"Fuzzy  "];
            self.challengeAnswerView.text = [self.challengeAnswerView.text stringByAppendingString: fuzzy];
        }
        
        else {
            NSString *theNumber = [[NSString alloc] initWithFormat:@"%i  ", i];
            self.challengeAnswerView.text = [self.challengeAnswerView.text stringByAppendingString: theNumber];

        }
    }
    
    
}
    
@end
