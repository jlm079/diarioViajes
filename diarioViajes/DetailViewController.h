//
//  DetailViewController.h
//  diarioViajes
//
//  Created by Javier Lopez Mesonero on 11/04/13.
//  Copyright (c) 2013 Javier Lopez Mesonero. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
