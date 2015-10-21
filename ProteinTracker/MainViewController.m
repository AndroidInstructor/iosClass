//
//  ViewController.m
//  ProteinTracker
//
//  Created by 205-5 on 2015-10-06.
//  Copyright © 2015 myorg. All rights reserved.
//

#import "MainViewController.h"
#import "HistoryViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

-(id)initWithCoder:(NSCoder *)aDecoder{
    self=[super initWithCoder:aDecoder];
    if(self){
        amountHistory = [[NSMutableArray alloc] init];
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSInteger goal = [[NSUserDefaults standardUserDefaults] integerForKey:@"goal"];
    self.goalLabel.text = [NSString stringWithFormat:@"%ld", goal];
    
    NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
    [center addObserver:self selector:@selector(goalChanged:) name:NSUserDefaultsDidChangeNotification object:nil];
}
-(void)goalChanged:(NSNotification *)notification{
    NSUserDefaults *defaults = (NSUserDefaults *)[notification object];
    
    NSInteger goal = [defaults integerForKey:@"goal"];
    self.goalLabel.text = [NSString stringWithFormat:@"%ld", goal];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addProtein:(id)sender {
    total += self.amountText.text.intValue;
    self.totalLabel.text = [NSString stringWithFormat:@"%d", total];
    
    [amountHistory addObject:[NSNumber numberWithInt:self.amountText.text.intValue]];
    
    if(total >= self.goalLabel.text.intValue){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Success!" message:@"You reached your goal" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
    }
}
-(IBAction)unwindToMain:(UIStoryboardSegue *)segue{
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"showHistory"]) {
        HistoryViewController *controller = (HistoryViewController *)segue.destinationViewController;
        [controller setHistory:amountHistory];
    }
}

@end
