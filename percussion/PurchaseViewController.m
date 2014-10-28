//
//  PurchaseViewController.m
//  percussion
//
//  Created by George Francis on 22/09/2014.
//  Copyright (c) 2014 GeorgeFrancis. All rights reserved.
//

#import "PurchaseViewController.h"
#import "MainViewController.h"

@interface PurchaseViewController ()

@property (strong,nonatomic)MainViewController *homeViewController;

@end

@implementation PurchaseViewController

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
    _productID = @"drums001";
    [self getProductInfo:self];
    
    [super viewDidLoad];
    self.addOnBrought = NO;
    self.buyButton.enabled = NO;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)getProductInfo:(MainViewController *)viewController{
    
    self.homeViewController = viewController;
    
    if ([SKPaymentQueue canMakePayments]) {
        SKProductsRequest *request = [[SKProductsRequest alloc]initWithProductIdentifiers:[NSSet setWithObject:self.productID]];
        request.delegate = self;
        
        [request start];
    }
    else
        self.productDescription.text = @"Please enable In App Purchase in Settings";
    
}

- (IBAction)restoreCompletedTransactions:(id)sender {
    
    [[SKPaymentQueue defaultQueue]addTransactionObserver:self];
    [[SKPaymentQueue defaultQueue] restoreCompletedTransactions];
}

#pragma mark -
#pragma mark SKProductRequestDelegate

-(void)productsRequest:(SKProductsRequest *)request didReceiveResponse:(SKProductsResponse *)response{
    
    NSArray *products = response.products;
    
    if (products.count !=0) {
        self.product = products[0];
        self.buyButton.enabled = YES;
        self.productTitle.text = self.product.localizedTitle;
        self.productDescription.text = self.product.localizedDescription;
    }
    else{
        self.productTitle.text = @"Product not found";
    }
    
    products = response.invalidProductIdentifiers;
    
    for (SKProduct  *product in products) {
        NSLog(@"Product not found: %@",product);
    }
    
}

- (IBAction)buyProduct:(id)sender {
    
    SKPayment *payment = [SKPayment paymentWithProduct:self.product];
    [[SKPaymentQueue defaultQueue]addPayment:payment];
}

#pragma mark -
#pragma mark SKPaymentTransactionObserver

-(void)paymentQueue:(SKPaymentQueue *)queue updatedTransactions:(NSArray *)transactions{
    
    for (SKPaymentTransaction *transaction in transactions)
    {
        switch (transaction.transactionState) {
            case SKPaymentTransactionStatePurchased:
                [self unlockFeature];
                [[SKPaymentQueue defaultQueue]finishTransaction:transaction];
                break;
                
            case SKPaymentTransactionStateFailed:
                NSLog(@"Transaction Failed");
                [[SKPaymentQueue defaultQueue]finishTransaction:transaction];
                break;
            case SKPaymentTransactionStateRestored:
                [self unlockFeature];
                [[SKPaymentQueue defaultQueue]
                 finishTransaction:transaction];
                break;
                
            default:
                break;
        }
    }
}


- (void)restoreTransaction:(SKPaymentTransaction *)transaction {}
-(void)paymentQueue:(SKPaymentQueue *)queue restoreCompletedTransactionsFailedWithError:(NSError *)error{}
-(void)paymentQueueRestoreCompletedTransactionsFinished:(SKPaymentQueue *)queue{}


-(void)unlockFeature{
    
    self.buyButton.enabled = NO;
    self.addOnBrought = YES;
    
    [[NSUserDefaults standardUserDefaults] setBool:self.addOnBrought forKey:@"addOnBool"];

    [self.buyButton setTitle:@"Purchased" forState:UIControlStateDisabled];
    
    self.buyButton.hidden = YES;
    
}


@end
