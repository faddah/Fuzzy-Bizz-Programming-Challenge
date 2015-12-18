//
//  MyViewController.h
//  Fuzzy Bizz Progamming Challenge
//
//  Created by Faddah Steve Wolf on 12/01/2015.
//  Copyright (c) 2015 186,000 mi/sec productions. All rights reserved.
//

#import <UIKit/UIkit.h>

/* * * * * - commenting this out in favor of what chris luu on ios-developer.slack.com suggested
@interface MyViewController : UIViewController <UITextInputDelegate, UITextInput, UIKeyInput, UITextInputTraits> {
    UITextField *textField;
    UILabel *label;
    IBOutlet UITextView *challengeAnswerView;
    NSString *userName;
    NSString *challengeOutputText;
}
 
* * * * * */

@interface MyViewController : UIViewController <UITextInputDelegate, UITextInput, UIKeyInput, UITextInputTraits> {
	NSString *userName;
	NSString *challengeOutputText;
}

@property (strong, nonatomic) IBOutlet UITextField *textField;

@property (strong, nonatomic) IBOutlet UILabel *label;

@property (strong, nonatomic) IBOutlet UITextView *challengeAnswerView;

@property (copy, nonatomic) NSString *userName;

@property (copy, nonatomic) NSString *challengeOutputText;

- (IBAction)changeName:(id)sender;

- (IBAction)runChallenge:(id)sender;

@end