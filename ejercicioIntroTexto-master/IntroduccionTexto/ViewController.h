//
//  ViewController.h
//  IntroduccionTexto
//
//  Created by Maria on 23/2/17.
//  Copyright © 2017 Maria. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *LabelNombre;

@property (weak, nonatomic) IBOutlet UILabel *LabelShowName;
@property (weak, nonatomic) IBOutlet UITextField *textfieldIntroName;
@property (weak, nonatomic) IBOutlet UILabel *labelApellido1;
@property (weak, nonatomic) IBOutlet UILabel *LabelShowApellido1;
@property (weak, nonatomic) IBOutlet UITextField *textfieldIntroApellido1;
@property (weak, nonatomic) IBOutlet UILabel *labelApellido2;
@property (weak, nonatomic) IBOutlet UILabel *labelShowApellido2;
@property (weak, nonatomic) IBOutlet UITextField *textfieldIntroApellido2;
@property (weak, nonatomic) IBOutlet UIButton *btnGuardar;
- (IBAction)btnActionMuestraDatos:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *btnBorrar;
- (IBAction)btnActionBorrar:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *labelNombreC;
@property (weak, nonatomic) IBOutlet UILabel *labelNombreCompleto;

@end

