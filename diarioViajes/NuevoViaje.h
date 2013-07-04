//
//  NuevoViaje.h
//  diarioViajes
//
//  Created by Javier Lopez Mesonero on 11/04/13.
//  Copyright (c) 2013 Javier Lopez Mesonero. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Event.h"

@interface NuevoViaje : UIViewController{
    
    IBOutlet UIDatePicker * datepicker;
    NSDate *fechaIda;
    NSDate *fechaVuelta;
    int duracionViaje;
    
}

//@property (strong) NSDate *fechaIda;
//@property (strong) NSDate *fechaVuelta;




@property (weak, nonatomic) IBOutlet UITextField *txtDestino;
@property (weak, nonatomic) IBOutlet UILabel *lblDuracionViaje;
@property (weak, nonatomic) IBOutlet UIToolbar *toolbarFecha;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *botonGuardar;

@property (strong, nonatomic) NSFetchedResultsController * fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

- (IBAction)ida:(id)sender;
- (IBAction)guardarFechaIda:(id)sender;
- (IBAction)fechaVuelta:(id)sender;

@end
