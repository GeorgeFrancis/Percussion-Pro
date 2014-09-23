//
//  MainViewController.m
//  percussion
//
//  Created by George Francis on 22/09/2014.
//  Copyright (c) 2014 GeorgeFrancis. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

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
    
    self.purchaseController = [[PurchaseViewController alloc]init];
    
    [[SKPaymentQueue defaultQueue]addTransactionObserver:self.purchaseController];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)purchaseItem:(id)sender {
    
    NSLog(@"Clicked conga button");

    
    _purchaseController.productID = @"drums001";
    
    [self.navigationController pushViewController:_purchaseController animated:YES];
    
    [_purchaseController getProductInfo:self];
    
}

-(void)enableLevel2{
    
    self.level2Button.enabled = YES;
}
@end
