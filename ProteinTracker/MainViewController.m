//
//  ViewController.m
//  ProteinTracker
//
//  Created by 205-5 on 2015-10-06.
//  Copyright © 2015 myorg. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addProtein:(id)sender {
    total += self.amountText.text.intValue;
    self.totalLabel.text = [NSString stringWithFormat:@"%d", total];
}
-(IBAction)unwindToMain:(UIStoryboardSegue *)segue{
    
}
@end
