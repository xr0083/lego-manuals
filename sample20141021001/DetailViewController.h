//
//  DetailViewController.h
//  sample20141021001
//
//  Created by dev1 on 2014. 10. 21..
//  Copyright (c) 2014년 Chan-yeong, Jeong. All rights reserved.
//

#import <UIKit/UIKit.h>
@class lego;

@interface DetailViewController : UITableViewController

@property (strong, nonatomic) lego *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *legoTitleLabel;
@property (weak, nonatomic) IBOutlet UITextView *descriptionTextView;

@end
