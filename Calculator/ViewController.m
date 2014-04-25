//
//  ViewController.m
//  Calculator
//
//  Created by Vini Gupta on 4/17/14.
//  Copyright (c) 2014 Vini Gupta. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *counterLabel;

@end

@implementation ViewController

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
- (IBAction)incrementCounter:(id)sender {
    NSInteger counterValue = [self.counterLabel.text integerValue];
    counterValue++;
    self.counterLabel.text = [NSString stringWithFormat:@"%ld",(long)counterValue];
}

- (IBAction)showAlert:(id)sender {
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"X CONF !!!" message:@"Wanna Attend?" delegate:self cancelButtonTitle:@"No" otherButtonTitles:@"Yes", nil];
    [alertView show];
}

@end
