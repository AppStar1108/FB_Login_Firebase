//
//  ViewController.m
//  FirebaseExample
//
//  Created by Admin on 3/6/17.
//  Copyright © 2017 Admin. All rights reserved.
//

#import "ViewController.h"
@import FirebaseCore;
@import FirebaseAuth;

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *txt_Email;
@property (weak, nonatomic) IBOutlet UITextField *txt_Psw;
- (IBAction)onClick_SignIn:(id)sender;

- (IBAction)onClick_SignUp:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    }

- (void)viewWillAppear:(BOOL)animated{
//    self.handle = [[FIRAuth auth]
//                   addAuthStateDidChangeListener:^(FIRAuth *_Nonnull auth, FIRUser *_Nullable user) {
//                       // ...
//                   }];


}
- (void)viewWillDisappear:(BOOL)animated{
//    [[FIRAuth auth] removeAuthStateDidChangeListener:_handle];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)onClick_SignIn:(id)sender {
    [[FIRAuth auth] signInWithEmail:_txt_Email.text
                           password:_txt_Psw.text
                         completion:^(FIRUser *user, NSError *error) {
                             if (error){
                                 NSLog(@"Error handling");
                             }else{
                                 NSLog(@"Success");
                             }
                             
                         }];
    
    
}

- (IBAction)onClick_SignUp:(id)sender {
    [[FIRAuth auth]
     createUserWithEmail:self.txt_Email.text
     password:self.txt_Psw.text
     completion:^(FIRUser *_Nullable user,
                  NSError *_Nullable error) {
         if (error){
             NSLog(@"Error Recieved!");
         
         }else
         {
             NSLog(@"Success!");
         }
     }];

}
@end
