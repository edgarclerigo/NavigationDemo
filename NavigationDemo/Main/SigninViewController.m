//
//  SigninViewController.m
//  NavigationDemo
//
//  Created by Edgar Clerigo on 17/02/16.
//  Copyright © 2016 Edgar Clerigo. All rights reserved.
//

#import "SigninViewController.h"

@interface SigninViewController ()

@end

@implementation SigninViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)performSignin:(id)sender {
    
    // move to tab bar storyboard
    UIStoryboard *tabBarStoryboard = [UIStoryboard storyboardWithName:@"TabBarNavigation" bundle:[NSBundle mainBundle]];
    UIViewController *tabBarStoryboardFirstItem = (UIViewController *)[tabBarStoryboard instantiateInitialViewController];
    [self presentViewController:tabBarStoryboardFirstItem animated:YES completion:nil];
    
}
@end
