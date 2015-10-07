//
//  ViewController.h
//  ProteinTracker
//
//  Created by 205-5 on 2015-10-06.
//  Copyright © 2015 myorg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController {
    int total;
}
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UILabel *goalLabel;
@property (weak, nonatomic) IBOutlet UITextField *amountText;

- (IBAction)addProtein:(id)sender;
- (IBAction)unwindToMain:(UIStoryboardSegue*) segue;
@end

