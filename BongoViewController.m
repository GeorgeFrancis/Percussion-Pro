//
//  BongoViewController.m
//  percussion
//
//  Created by George Francis on 26/08/2014.
//  Copyright (c) 2014 GeorgeFrancis. All rights reserved.
//

#import "BongoViewController.h"

@interface BongoViewController ()

@end

@implementation BongoViewController

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
    
    self.soundPlayer = [[SoundPlayer alloc]init];
    [self createSoundURLs];
    
     [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)playbongo:(id)sender {
    
   [self executeActionWithTag:[sender tag]];
        
    }

-(void)executeActionWithTag:(NSUInteger)tag {
        
        if (tag ==1) {
            NSLog(@"this works");
             [self.soundPlayer setVolume:1.0];
            [self.soundPlayer playSoundAtURL:self.sound3URL];
        }
        
        if (tag ==2) {
             [self.soundPlayer setVolume:1.0];
            [self.soundPlayer playSoundAtURL:self.sound2URL];
        }
        
        if (tag ==3) {
             [self.soundPlayer setVolume:1.0];
            [self.soundPlayer playSoundAtURL:self.sound4URL];
        }
        
        if (tag ==4) {
             [self.soundPlayer setVolume:1.0];
            [self.soundPlayer playSoundAtURL:self.sound1URL];
        }
        
    }


- (void)createSoundURLs
{
    NSString *soundFile1 = [[NSBundle mainBundle] pathForResource:@"Acoustic Hat-01" ofType:@"wav"];
    self.sound1URL = [NSURL fileURLWithPath:soundFile1];
    
    NSString *soundFile2 = [[NSBundle mainBundle] pathForResource:@"CYCdh_LudRimA-07" ofType:@"wav"];
    self.sound2URL = [NSURL fileURLWithPath:soundFile2];
    
    NSString *soundFile3 = [[NSBundle mainBundle] pathForResource:@"CYCdh_AcouKick-18" ofType:@"wav"];
    self.sound3URL = [NSURL fileURLWithPath:soundFile3];
    
    NSString *soundFile4 = [[NSBundle mainBundle] pathForResource:@"CYCdh_AcouKick-01" ofType:@"wav"];
    self.sound4URL = [NSURL fileURLWithPath:soundFile4];
}


    

@end
