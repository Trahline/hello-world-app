//
//  gViewController.m
//  helloWorld
//
//  Created by TIMOTHY AHLINE on 1/17/13.
//  Copyright (c) 2013 TIMOTHY AHLINE. All rights reserved.
//

#import "gViewController.h"

@interface gViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *textField;
- (IBAction)changeGreeting:(id)sender;

@end

@implementation gViewController
@synthesize username = _username;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)changeGreeting:(id)sender {
        
        
        
        self.username = self.textField.text;
        
        
        
        NSString *nameString = self.username;
        
        if ([nameString length] == 0) {
            
            nameString = @"World";
            
        }
        
        NSString *greeting = [[NSString alloc] initWithFormat:@"Hello, %@!", nameString];
        
        self.label.text = greeting;
        
    
}
- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    
    if (theTextField == self.textField) {
        
        [theTextField resignFirstResponder];
        
    }
    
    return YES;
    
}
@end
