//
//  MainViewController.h
//  percussion
//
//  Created by George Francis on 22/09/2014.
//  Copyright (c) 2014 GeorgeFrancis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <StoreKit/StoreKit.h>
#import "PurchaseViewController.h"

@interface MainViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIButton *level2Button;
@property (strong, nonatomic) IBOutlet UIButton *buyCongasButton;

//- (IBAction)purchaseItem:(id)sender;
@property (strong, nonatomic) PurchaseViewController *purchaseController;

@property BOOL passBoolPurchase;



-(void)enableLevel2;

@end
