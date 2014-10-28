//
//  PurchaseViewController.h
//  percussion
//
//  Created by George Francis on 22/09/2014.
//  Copyright (c) 2014 GeorgeFrancis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <StoreKit/StoreKit.h>
//#import "MainViewController.h"

@interface PurchaseViewController : UIViewController <SKPaymentTransactionObserver, SKProductsRequestDelegate>

@property (strong, nonatomic) SKProduct *product;
@property (strong, nonatomic) NSString *productID;

@property (strong, nonatomic) IBOutlet UILabel *productTitle;
@property (strong, nonatomic) IBOutlet UITextView *productDescription;
@property (strong, nonatomic) IBOutlet UIButton *buyButton;
- (IBAction)buyProduct:(id)sender;
-(void)getProductInfo:(UIViewController*)viewController;
- (IBAction)restoreCompletedTransactions:(id)sender;


@property BOOL addOnBrought;

@end
