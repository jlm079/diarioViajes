//
//  DetalleViajeViewController.m
//  diarioViajes
//
//  Created by Javier Lopez Mesonero on 13/04/13.
//  Copyright (c) 2013 Javier Lopez Mesonero. All rights reserved.
//

#import "DetalleViajeViewController.h"

@interface DetalleViajeViewController ()

@end

@implementation DetalleViajeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    
    self.lblViaje.text = self.viaje.destino;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
