//
//  SplasViewController.m
//  NavigationDemo
//
//  Created by Edgar Clerigo on 17/02/16.
//  Copyright © 2016 Edgar Clerigo. All rights reserved.
//

#import "SplashViewController.h"

@interface SplashViewController ()

@end

@implementation SplashViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    BOOL isUserSignedIn = NO;
    
    if (!isUserSignedIn) {
        UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
        UINavigationController *navigationController = (UINavigationController *)[mainStoryboard instantiateViewControllerWithIdentifier:@"signInNavigationID"];
        [self presentViewController:navigationController animated:YES completion:nil];
        return;
    }
    
    // move to tab bar storyboard
    UIStoryboard *tabBarStoryboard = [UIStoryboard storyboardWithName:@"TabBarNavigation" bundle:[NSBundle mainBundle]];
    UIViewController *tabBarStoryboardFirstItem = (UIViewController *)[tabBarStoryboard instantiateInitialViewController];
    [self presentViewController:tabBarStoryboardFirstItem animated:YES completion:nil];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
