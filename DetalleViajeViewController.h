//
//  DetalleViajeViewController.h
//  diarioViajes
//
//  Created by Javier Lopez Mesonero on 13/04/13.
//  Copyright (c) 2013 Javier Lopez Mesonero. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Event.h"

@interface DetalleViajeViewController : UIViewController

@property (strong, nonatomic) Event *viaje;
@property (strong, nonatomic) id detailItem;


@property (weak, nonatomic) IBOutlet UILabel *lblViaje;
@end
