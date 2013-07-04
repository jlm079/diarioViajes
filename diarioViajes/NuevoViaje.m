//
//  NuevoViaje.m
//  diarioViajes
//
//  Created by Javier Lopez Mesonero on 11/04/13.
//  Copyright (c) 2013 Javier Lopez Mesonero. All rights reserved.
//

#import "NuevoViaje.h"
#import <CoreData/CoreData.h>
#import "AppDelegate.h"

@interface NuevoViaje ()

@end

@implementation NuevoViaje

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
    
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(terminar:)];
    self.navigationItem.rightBarButtonItem = addButton;
}

-(void)terminar:(id)sender{
  
    Event *viaje = (Event *)[NSEntityDescription
                             insertNewObjectForEntityForName:@"Event"
                             inManagedObjectContext:_managedObjectContext];
    
        
    [viaje setDestino:_txtDestino.text];
    
    [self saveAction];
    
    [self.navigationController popToRootViewControllerAnimated:YES];

    
}

- (void)saveAction {
    NSError *error;
    if (![self.managedObjectContext save:&error]) {
        NSLog(@"Error de Core Data %@, %@", error, [error userInfo]);
        exit(-1);
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ida:(id)sender {
    
    [UIView beginAnimations:@"MiAnimacion" context:nil];
    [UIView setAnimationDuration:0.3];
    [UIView setAnimationRepeatAutoreverses:NO];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    [UIView setAnimationDelegate:self];
    
    self.toolbarFecha.center = CGPointMake(160, 225);
    self->datepicker.center = CGPointMake(160, 355);
    
    [UIView commitAnimations];
    
    self.botonGuardar.enabled = NO;
}

- (IBAction)guardarFechaIda:(id)sender {
    
    //doy formato a la fecha y la obtengo del datepicker

    NSDateFormatter * dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"dd-MM-yyyy"];
    
    NSLocale *esLocale = [[NSLocale alloc]initWithLocaleIdentifier:@"es_ES"];
    [dateFormatter setLocale:esLocale];

    NSDate *fechaVuelta1 =[[NSUserDefaults standardUserDefaults] objectForKey:@"DatePickerViewController.selectedDate"];

    
//    NSString * selectionString = [dateFormatter stringFromDate:[datepicker date]];
//    NSString * date = [selectionString description];
//    
//    NSDate *selectionDate = [dateFormatter dateFromString:date];
    
    //asigno la fecha obtenida a la variable 
    
    fechaVuelta1 = fechaVuelta;
    
    //animo el picker
    
    [UIView beginAnimations:@"MiAnimacion" context:nil];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationRepeatAutoreverses:NO];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    [UIView setAnimationDelegate:self];
    
    self.toolbarFecha.center = CGPointMake(160, 800);
    self->datepicker.center = CGPointMake(160, 800);
    
    
    [UIView commitAnimations];
    
    //calculo los dias entre las dos fechas
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"dd-MM-yyyy"];
    
    // Fecha inicial: fecha actual
    NSDate *startDate = fechaIda;
    
    // Fecha final
    NSDate *endDate = fechaVuelta;
    
    NSCalendar *gregorianCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    
    // Creacion del objeto de calculo
    NSDateComponents *components = [gregorianCalendar components:NSDayCalendarUnit
                                                        fromDate:startDate
                                                          toDate:endDate
                                                         options:0];
    duracionViaje = [components day];
    
    [_lblDuracionViaje setText:[NSString stringWithFormat:@"%d", duracionViaje]];
    
    NSLog(@"El número de días entre&nbsp;%@ y %@ son: %d", startDate, endDate, [components day]);

    


    
}

- (IBAction)fechaVuelta:(id)sender {
    
    NSDateFormatter * dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"dd-MM-yyyy"];
    
    NSLocale *esLocale = [[NSLocale alloc]initWithLocaleIdentifier:@"es_ES"];
    [dateFormatter setLocale:esLocale];
    
    NSDate *fechaIda1 =[[NSUserDefaults standardUserDefaults] objectForKey:@"DatePickerViewController.selectedDate"];
    
//    NSString * selectionString = [dateFormatter stringFromDate:[datepicker date]];
//    NSString * date = [selectionString description];
//    
//    NSDate *selectionDate = [dateFormatter dateFromString:date];
    
    fechaIda1 = fechaIda;
    
    [UIView beginAnimations:@"MiAnimacion" context:nil];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationRepeatAutoreverses:NO];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    [UIView setAnimationDelegate:self];
    
    self.toolbarFecha.center = CGPointMake(160, 800);
    self->datepicker.center = CGPointMake(160, 800);
    
    
    [UIView commitAnimations];
    
    [UIView beginAnimations:@"MiAnimacion" context:nil];
    [UIView setAnimationDuration:0.3];
    [UIView setAnimationRepeatAutoreverses:NO];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    [UIView setAnimationDelegate:self];
    
    // self.imgBut.hidden = YES;
    // self.imgLabel.hidden = YES;
    
    self.toolbarFecha.center = CGPointMake(160, 225);
    self->datepicker.center = CGPointMake(160, 355);
    
    [UIView commitAnimations];
    
    self.botonGuardar.enabled = YES;



    
}

//-(void)duracionViaje{
//    
//    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
//    [formatter setDateFormat:@"dd-MM-yyyy"];
//    
//    // Fecha inicial: fecha actual
//    NSDate *startDate = fechaIda;
//    
//    // Fecha final
//    NSDate *endDate = fechaVuelta;
//    
//    NSCalendar *gregorianCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
//    
//    // Creacion del objeto de calculo
//    NSDateComponents *components = [gregorianCalendar components:NSDayCalendarUnit
//                                                        fromDate:startDate
//                                                          toDate:endDate
//                                                         options:0];
//    duracionViaje = [components day];
//}


@end
