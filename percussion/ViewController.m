//
//  ViewController.m
//  percussion
//
//  Created by George Francis on 29/07/2014.
//  Copyright (c) 2014 GeorgeFrancis. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    self.soundPlayer = [[SoundPlayer alloc]init];
    
    self.pressCountArray = [[NSMutableArray alloc]init];
    self.pressCountArray2 = [[NSMutableArray alloc]init];
    self.pressCountArray3 = [[NSMutableArray alloc]init];
    self.pressCountArray4 = [[NSMutableArray alloc]init];
    
    self.btnTimerArray = [[NSMutableArray alloc]init];
    self.timerCounter = 0;
    
    self.playing = NO;
    
    [self createSoundURLs];
    [self setUpPressedCount];
    [self setUpBtnTimes];
    
    self.numberOfRows = 3;
    
    self.countArray = [[NSMutableArray alloc]initWithCapacity:self.numberOfRows];
    
    [super viewDidLoad];
    
    
       
   // [self.buttons setValue:[NSNumber numberWithBool:YES] forKey:@"hidden"];
    
    
}

-(void)setUpBtnTimes{
    
    self.btnTimer1 = 0.25;
    self.btnTimer2 = 0.5;
    self.btnTimer3 = 0.75;
    self.btnTimer4 = 1;
    self.btnTimer5 = 1.25;
    self.btnTimer6 = 1.5;
    self.btnTimer7 = 1.75;
    self.btnTimer8 = 2;
    self.btnTimer9 = 2.25;
    self.btnTimer10 = 2.5;
    self.btnTimer11 = 2.75;
    self.btnTimer12 = 3;
    self.btnTimer13 = 3.25;
    self.btnTimer14 = 3.5;
    self.btnTimer15 = 3.75;
    self.btnTimer16 = 4;
    
    
    
    
    
    [self.btnTimerArray addObject:[NSNumber numberWithFloat:self.btnTimer1]];
    [self.btnTimerArray addObject:[NSNumber numberWithFloat:self.btnTimer2]];
    [self.btnTimerArray addObject:[NSNumber numberWithFloat:self.btnTimer3]];
    [self.btnTimerArray addObject:[NSNumber numberWithFloat:self.btnTimer4]];
    [self.btnTimerArray addObject:[NSNumber numberWithFloat:self.btnTimer5]];
    [self.btnTimerArray addObject:[NSNumber numberWithFloat:self.btnTimer6]];
    [self.btnTimerArray addObject:[NSNumber numberWithFloat:self.btnTimer7]];
    [self.btnTimerArray addObject:[NSNumber numberWithFloat:self.btnTimer8]];
    [self.btnTimerArray addObject:[NSNumber numberWithFloat:self.btnTimer9]];
    [self.btnTimerArray addObject:[NSNumber numberWithFloat:self.btnTimer10]];
    [self.btnTimerArray addObject:[NSNumber numberWithFloat:self.btnTimer11]];
    [self.btnTimerArray addObject:[NSNumber numberWithFloat:self.btnTimer12]];
    [self.btnTimerArray addObject:[NSNumber numberWithFloat:self.btnTimer13]];
    [self.btnTimerArray addObject:[NSNumber numberWithFloat:self.btnTimer14]];
    [self.btnTimerArray addObject:[NSNumber numberWithFloat:self.btnTimer15]];
    [self.btnTimerArray addObject:[NSNumber numberWithFloat:self.btnTimer16]];
    
  
        
    
}

-(void)setUpPressedCount{
    
    [self.pressCountArray addObject:@(self.presscount1)];
    [self.pressCountArray addObject:[NSNumber numberWithInt:self.presscount2]];
    [self.pressCountArray addObject:[NSNumber numberWithInt:self.presscount3]];
    [self.pressCountArray addObject:[NSNumber numberWithInt:self.presscount4]];
    [self.pressCountArray addObject:[NSNumber numberWithInt:self.presscount5]];
    [self.pressCountArray addObject:[NSNumber numberWithInt:self.presscount6]];
    [self.pressCountArray addObject:[NSNumber numberWithInt:self.presscount7]];
    [self.pressCountArray addObject:[NSNumber numberWithInt:self.presscount8]];
    [self.pressCountArray addObject:[NSNumber numberWithInt:self.presscount9]];
    [self.pressCountArray addObject:[NSNumber numberWithInt:self.presscount10]];
    [self.pressCountArray addObject:[NSNumber numberWithInt:self.presscount11]];
    [self.pressCountArray addObject:[NSNumber numberWithInt:self.presscount12]];
    [self.pressCountArray addObject:[NSNumber numberWithInt:self.presscount13]];
    [self.pressCountArray addObject:[NSNumber numberWithInt:self.presscount14]];
    [self.pressCountArray addObject:[NSNumber numberWithInt:self.presscount15]];
    [self.pressCountArray addObject:[NSNumber numberWithInt:self.presscount16]];
    
    for (NSInteger i = 0; i < [self.pressCountArray count]; i++){
        
        self.pressCountArray[i] = @0;
        
            }
    
    [self.pressCountArray2 addObject:@(self.press2count1)];
    [self.pressCountArray2 addObject:[NSNumber numberWithInt:self.press2count2]];
    [self.pressCountArray2 addObject:[NSNumber numberWithInt:self.press2count3]];
    [self.pressCountArray2 addObject:[NSNumber numberWithInt:self.press2count4]];
    [self.pressCountArray2 addObject:[NSNumber numberWithInt:self.press2count5]];
    [self.pressCountArray2 addObject:[NSNumber numberWithInt:self.press2count6]];
    [self.pressCountArray2 addObject:[NSNumber numberWithInt:self.press2count7]];
    [self.pressCountArray2 addObject:[NSNumber numberWithInt:self.press2count8]];
    [self.pressCountArray2 addObject:[NSNumber numberWithInt:self.press2count9]];
    [self.pressCountArray2 addObject:[NSNumber numberWithInt:self.press2count10]];
    [self.pressCountArray2 addObject:[NSNumber numberWithInt:self.press2count11]];
    [self.pressCountArray2 addObject:[NSNumber numberWithInt:self.press2count12]];
    [self.pressCountArray2 addObject:[NSNumber numberWithInt:self.press2count13]];
    [self.pressCountArray2 addObject:[NSNumber numberWithInt:self.press2count14]];
    [self.pressCountArray2 addObject:[NSNumber numberWithInt:self.press2count15]];
    [self.pressCountArray2 addObject:[NSNumber numberWithInt:self.press2count16]];
    
    
    for (NSInteger i = 0; i < [self.pressCountArray2 count]; i++){
        
        self.pressCountArray2[i] = @0;
        
    }
    
    [self.pressCountArray3 addObject:@(self.press3count1)];
    [self.pressCountArray3 addObject:[NSNumber numberWithInt:self.press3count2]];
    [self.pressCountArray3 addObject:[NSNumber numberWithInt:self.press3count3]];
    [self.pressCountArray3 addObject:[NSNumber numberWithInt:self.press3count4]];
    [self.pressCountArray3 addObject:[NSNumber numberWithInt:self.press3count5]];
    [self.pressCountArray3 addObject:[NSNumber numberWithInt:self.press3count6]];
    [self.pressCountArray3 addObject:[NSNumber numberWithInt:self.press3count7]];
    [self.pressCountArray3 addObject:[NSNumber numberWithInt:self.press3count8]];
    [self.pressCountArray3 addObject:[NSNumber numberWithInt:self.press3count9]];
    [self.pressCountArray3 addObject:[NSNumber numberWithInt:self.press3count10]];
    [self.pressCountArray3 addObject:[NSNumber numberWithInt:self.press3count11]];
    [self.pressCountArray3 addObject:[NSNumber numberWithInt:self.press3count12]];
    [self.pressCountArray3 addObject:[NSNumber numberWithInt:self.press3count13]];
    [self.pressCountArray3 addObject:[NSNumber numberWithInt:self.press3count14]];
    [self.pressCountArray3 addObject:[NSNumber numberWithInt:self.press3count15]];
    [self.pressCountArray3 addObject:[NSNumber numberWithInt:self.press3count16]];
    
    for (NSInteger i = 0; i < [self.pressCountArray3 count]; i++){
        
        self.pressCountArray3[i] = @0;
        
    }
    
    [self.pressCountArray4 addObject:@(self.press4count1)];
    [self.pressCountArray4 addObject:[NSNumber numberWithInt:self.press4count2]];
    [self.pressCountArray4 addObject:[NSNumber numberWithInt:self.press4count3]];
    [self.pressCountArray4 addObject:[NSNumber numberWithInt:self.press4count4]];
    [self.pressCountArray4 addObject:[NSNumber numberWithInt:self.press4count5]];
    [self.pressCountArray4 addObject:[NSNumber numberWithInt:self.press4count6]];
    [self.pressCountArray4 addObject:[NSNumber numberWithInt:self.press4count7]];
    [self.pressCountArray4 addObject:[NSNumber numberWithInt:self.press4count8]];
    [self.pressCountArray4 addObject:[NSNumber numberWithInt:self.press4count9]];
    [self.pressCountArray4 addObject:[NSNumber numberWithInt:self.press4count10]];
    [self.pressCountArray4 addObject:[NSNumber numberWithInt:self.press4count11]];
    [self.pressCountArray4 addObject:[NSNumber numberWithInt:self.press4count12]];
    [self.pressCountArray4 addObject:[NSNumber numberWithInt:self.press4count13]];
    [self.pressCountArray4 addObject:[NSNumber numberWithInt:self.press4count14]];
    [self.pressCountArray4 addObject:[NSNumber numberWithInt:self.press4count15]];
    [self.pressCountArray4 addObject:[NSNumber numberWithInt:self.press4count16]];
    
    for (NSInteger i = 0; i < [self.pressCountArray4 count]; i++){
        
        self.pressCountArray4[i] = @0;
        
    }


    
}

-(void)timerSetup{
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.25 target:self selector:@selector(playBeat)
                                                  userInfo:nil repeats:YES];
}

-(void)playBeat{
    
    self.timerCounter = self.timerCounter + 0.25;
    
    if (self.timerCounter == 4.25) {
        self.timerCounter = 0.25;
    }
   
    
    for (NSInteger i = 0; i < [self.pressCountArray count]; i++){
        
        
        if ([[self.pressCountArray objectAtIndex:i] integerValue]>0 && [[self.btnTimerArray objectAtIndex:i]floatValue] == self.timerCounter) {
            
            switch ([[self.pressCountArray objectAtIndex:i] integerValue]) {
                case 1:
                    [self.soundPlayer setVolume:0.1];
                    [self.soundPlayer playSoundAtURL:self.sound1URL];
                    break;
                case 2:
                    [self.soundPlayer setVolume:1.0];
                    [self.soundPlayer playSoundAtURL:self.sound1URL];
                    break;
                case 3:
                    [self.soundPlayer setVolume:2.0];
                    [self.soundPlayer playSoundAtURL:self.sound1URL];
                    break;
                    
                default:
                    break;
            }
        }
    }
    
    for (NSInteger i = 0; i < [self.pressCountArray2 count]; i++){
        
        
        if ([[self.pressCountArray2 objectAtIndex:i] integerValue]>0 && [[self.btnTimerArray objectAtIndex:i]floatValue] == self.timerCounter) {
            
            switch ([[self.pressCountArray2 objectAtIndex:i] integerValue]) {
                case 1:
                    [self.soundPlayer setVolume:0.1];
                    [self.soundPlayer playSoundAtURL:self.sound2URL];
                    break;
                case 2:
                    [self.soundPlayer setVolume:1.0];
                    [self.soundPlayer playSoundAtURL:self.sound2URL];
                    break;
                case 3:
                    [self.soundPlayer setVolume:2.0];
                    [self.soundPlayer playSoundAtURL:self.sound2URL];
                    break;
                    
                default:
                    break;
            }
        }
    }
    
    for (NSInteger i = 0; i < [self.pressCountArray3 count]; i++){
        
        
        if ([[self.pressCountArray3 objectAtIndex:i] integerValue]>0 && [[self.btnTimerArray objectAtIndex:i]floatValue] == self.timerCounter) {
            
            switch ([[self.pressCountArray3 objectAtIndex:i] integerValue]) {
                case 1:
                    [self.soundPlayer setVolume:0.1];
                    [self.soundPlayer playSoundAtURL:self.sound3URL];
                    break;
                case 2:
                    [self.soundPlayer setVolume:1.0];
                    [self.soundPlayer playSoundAtURL:self.sound3URL];
                    break;
                case 3:
                    [self.soundPlayer setVolume:2.0];
                    [self.soundPlayer playSoundAtURL:self.sound3URL];
                    break;
                    
                default:
                    break;
            }
        }
    }
    
    for (NSInteger i = 0; i < [self.pressCountArray4 count]; i++){
        
        
        if ([[self.pressCountArray4 objectAtIndex:i] integerValue]>0 && [[self.btnTimerArray objectAtIndex:i]floatValue] == self.timerCounter) {
            
            switch ([[self.pressCountArray4 objectAtIndex:i] integerValue]) {
                case 1:
                    [self.soundPlayer setVolume:0.1];
                    [self.soundPlayer playSoundAtURL:self.sound4URL];
                    break;
                case 2:
                    [self.soundPlayer setVolume:1.0];
                    [self.soundPlayer playSoundAtURL:self.sound4URL];
                    break;
                case 3:
                    [self.soundPlayer setVolume:2.0];
                    [self.soundPlayer playSoundAtURL:self.sound4URL];
                    break;
                    
                default:
                    break;
            }
        }
    }



}

-(void)stopTimer{
    
    [self.timer invalidate];
}




- (IBAction)playsound:(id)sender {
    
    if (!self.playing) {
        [self.playButton setImage:[UIImage imageNamed:@"stopButton.png"] forState:UIControlStateNormal];
        self.playing = YES;
        [self timerSetup];
    }
    
    else if (self.playing){
        [self.playButton setImage:[UIImage imageNamed:@"playButton.png"] forState:UIControlStateNormal];
        self.playing = NO;
        [self stopTimer];
        
        
    }
    
    
 //   [self.buttons setValue:[NSNumber numberWithBool:NO] forKey:@"hidden"];
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


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)pressCountBtn:(id)sender {
    
    
         UIButton * btn = (UIButton *)sender;
    [self setButtonImage:btn andArray: self.pressCountArray];
    
}

-(void)setButtonImage:(UIButton *) btn andArray:(NSMutableArray *) array{
    
    

        int btag = btn.tag;
        
        int curCnt = [[array objectAtIndex:btag] intValue];
        curCnt ++;
        
        if (curCnt > 3)
        {
            curCnt = 0;
           // [btn setTitle:[NSString stringWithFormat:@""] forState:UIControlStateNormal];
            [btn setImage:[UIImage imageNamed:@"button1.png"] forState:UIControlStateNormal];
        }
        else {
            
            switch (curCnt) {
                case 1:
                     [btn setImage:[UIImage imageNamed:@"button2.png"] forState:UIControlStateNormal];
                    break;
                    
                case 2:
                    [btn setImage:[UIImage imageNamed:@"button3.png"] forState:UIControlStateNormal];
                    break;
                case 3:
                    [btn setImage:[UIImage imageNamed:@"button4.png"] forState:UIControlStateNormal];
                    break;
                    
                default:
                    break;
            }
            
       
        //    [btn setTitle:[NSString stringWithFormat:@"%i",curCnt] forState:UIControlStateNormal];
            
        }
        
        [array replaceObjectAtIndex:btag withObject:[NSNumber numberWithInt:curCnt]];
        
}

- (IBAction)pressCountBtn2:(id)sender {
    
    UIButton * btn = (UIButton *)sender;
    [self setButtonImage:btn andArray:self.pressCountArray2];
    

}

- (IBAction)pressCountBtn3:(id)sender {
    
    UIButton * btn = (UIButton *)sender;
    [self setButtonImage:btn andArray:self.pressCountArray3];

}

- (IBAction)pressCountBtn4:(id)sender {
    
    UIButton * btn = (UIButton *)sender;
    int btag = btn.tag;
    
    int curCnt = [[self.pressCountArray4 objectAtIndex:btag] intValue];
    curCnt ++;
    
    if (curCnt > 3)
    {
        curCnt = 0;
        [btn setTitle:[NSString stringWithFormat:@""] forState:UIControlStateNormal];
    }
    else {
        [btn setTitle:[NSString stringWithFormat:@"%i",curCnt] forState:UIControlStateNormal];
    }
    
    [self.pressCountArray4 replaceObjectAtIndex:btag withObject:[NSNumber numberWithInt:curCnt]];
    

}

- (IBAction)clear:(id)sender {
    
 //   UIButton *btnClear = (UIButton*)sender;
   // int clearCount = 0;
   // int tagClear = btnClear.tag;
    
    for (NSInteger i = 0; i < [self.pressCountArray count]; i++){
        
        self.pressCountArray[i] = @0;
        
       
       
     //   [[self.pressCountArray replaceObjectAtIndex:i] withObject:self.pressCountArray objectAtIndex:i]];
        
        
     //   [btnClear setTitle:[NSString stringWithFormat:@"%i",clearCount] forState:UIControlStateNormal];

        
    }
   }


@end








































//-(void)executeActionWithTag:(NSUInteger)tag {
//
//    if (tag == 1) {
//
//        self.presscount1 ++;
//
//            [self.pressCountArray replaceObjectAtIndex:0 withObject:[NSNumber numberWithInt:self.presscount1]];
//        if (self.presscount1 > 3) {
//            self.presscount1 = 0;
//        }
//
//       // [self.btnOutlet1 setTitle:[NSString stringWithFormat:@"%i",self.presscount1] forState:UIControlStateNormal];
//
//        if (self.presscount1 == 0) {
//     //       [self.btnOutlet1 setTitle:[NSString stringWithFormat:@""] forState:UIControlStateNormal];
//
//        }
//    }
//
//    if (tag == 2) {
//        self.presscount2 ++;
//        if (self.presscount2 > 3) {
//            self.presscount2 = 0;
//        }
//
//    //    [self.btnOutlet2 setTitle:[NSString stringWithFormat:@"%i",self.presscount2] forState:UIControlStateNormal];
//
//        if (self.presscount2 == 0) {
//     //       [self.btnOutlet2 setTitle:[NSString stringWithFormat:@""] forState:UIControlStateNormal];
//
//        }
//    }
//
//
//}

