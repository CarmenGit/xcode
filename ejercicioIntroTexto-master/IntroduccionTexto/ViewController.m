//
//  ViewController.m
//  IntroduccionTexto
//
//  Created by Maria on 23/2/17.
//  Copyright © 2017 Maria. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //El ejercicio consiste en introducir los datos, que al pulsar muestre los datos en el label correspondiente, y en otro label el nombre completo. Y que al pulsar borrar, borre todo.
    
    
    //Ponemos el texto a los label:
    
    self.LabelNombre.text = @"Introduzca nombre:";
    self.labelApellido1.text = @"Introduzca primer apellido";
    self.labelApellido2.text = @"Introduzca segundo apellido";
    
    
    //Ponemos el texto a los botones. forState quiere decir que ese botón, en su estado normal,(No pulsado ni nada de eso, que también se puede configurar), muestra ese texto.
    [self.btnGuardar setTitle:@"Mostrar Datos" forState: UIControlStateNormal];
    
    [self.btnBorrar setTitle:@"Borrar" forState:(UIControlStateNormal)];
    
    //sizeToFit hace que el label se adapte a lo que ocupe el texto introducido.
    //No sé por qué ahora en casa no me lo hace y de hecho no funciona el botón, pero en clase funcionaba. Las maravillas de la Siensia. Así que os lo dejo comentado para que sepáis cómo es al menos.
    
    /*[self.LabelShowName sizeToFit];
    [self.LabelShowApellido1 sizeToFit];
    [self.labelShowApellido2 sizeToFit];*/
    
    self.labelNombreC.text = @"Nombre completo:";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Métodos de los botones. Estos métodos se han creado automáticamente cuando hemos enlazado el botón con la clase .h y hemos especificado su Action.
- (IBAction)btnActionMuestraDatos:(id)sender {
    
    //Aquí solo igualamos los textos para que el dato introducido se muestre en el label:
    self.LabelShowName.text = self.textfieldIntroName.text;
    self.LabelShowApellido1.text = self.textfieldIntroApellido1.text;
    self.labelShowApellido2.text = self.textfieldIntroApellido2.text;
    
    //Unimos los strings para mostrar el nombre completo en una variable:
    //Le estamos especificando el formato que tiene con stringWithFormat. Cada %@ es el valor de un campo.
    //Tenemos tres %@, para el nombre, apellido1 y apellido2, y se los pasamos en orden a continuación.
    NSString *nombreCompleto = [NSString stringWithFormat:@"El nombre completo es %@ %@ %@",
                                self.textfieldIntroName.text,
                                self.textfieldIntroApellido1.text,
                                self.textfieldIntroApellido2.text];
    
    self.labelNombreCompleto.text = nombreCompleto;
    
}
- (IBAction)btnActionBorrar:(id)sender {
    //Los ponemos en blanco:
    self.LabelShowName.text = @"";
    self.textfieldIntroName.text = @"";
    self.LabelShowApellido1.text = @"";
    self.textfieldIntroApellido1.text = @"";
    self.labelShowApellido2.text = @"";
    self.textfieldIntroApellido2.text = @"";
    self.labelNombreCompleto.text = @"";
}
@end
