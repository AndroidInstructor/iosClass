//
//  HistoryViewController.h
//  ProteinTracker
//
//  Created by 205-5 on 2015-10-06.
//  Copyright © 2015 myorg. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface HistoryViewController : UIViewController{
    NSMutableArray * history;
}
-(void) setHistory: (NSMutableArray *)h;
@property (weak, nonatomic) IBOutlet UILabel *historyLabel;


@end
