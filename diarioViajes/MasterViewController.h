//
//  MasterViewController.h
//  diarioViajes
//
//  Created by Javier Lopez Mesonero on 11/04/13.
//  Copyright (c) 2013 Javier Lopez Mesonero. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TablaDias;

#import <CoreData/CoreData.h>
#import "NuevoViaje.h"
#import "DetalleViajeViewController.h"

@interface MasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) TablaDias *tablaDias;

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
