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
    
    
}

-(void)timerSetup{
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.25 target:self selector:@selector(playBeat)
                                                  userInfo:nil repeats:YES];
}

-(void)playBeat{
    
    self.timerCounter = self.timerCounter + 0.25;
    
    if (self.timerCounter == 4) {
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
    
    for (NSInteger i = 0; i < [self.pressCountArray count]; i++){
        
        
        if ([[self.pressCountArray2 objectAtIndex:i] integerValue]>0 && [[self.btnTimerArray objectAtIndex:i]floatValue] == self.timerCounter) {
            
            switch ([[self.pressCountArray2 objectAtIndex:i] integerValue]) {
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
        int btag = btn.tag;
        
        int curCnt = [[self.pressCountArray objectAtIndex:btag] intValue];
        curCnt ++;
        
        if (curCnt > 3)
        {
            curCnt = 0;
            [btn setTitle:[NSString stringWithFormat:@""] forState:UIControlStateNormal];
        }
        else {
            [btn setTitle:[NSString stringWithFormat:@"%i",curCnt] forState:UIControlStateNormal];
        }
        
        [self.pressCountArray replaceObjectAtIndex:btag withObject:[NSNumber numberWithInt:curCnt]];
        
}
    
//    UIButton *btn = (UIButton *)sender;
//    
//    int btag = btn.tag;
//    
//    if([[self.countArray objectAtIndex:btag]valueForKey:@"COUNT"]==NULL){
//        
//        [[self.countArray objectAtIndex:btag]setValue:@"1" forKeyPath:@"COUNT"];
//        
//    }
//    
//    else{
//        
//        NSInteger count=[[[self.countArray objectAtIndex:btag]valueForKey:@"COUNT"]integerValue];
//        count+=count;
//        if (count>3) {
//            count = 0;
//            [btn setTitle:[NSString stringWithFormat:@""] forState:UIControlStateNormal];
//        }
//        else
//            [btn setTitle:[NSString stringWithFormat:@"%i",count] forState:UIControlStateNormal];
//        [[self.countArray objectAtIndex:btag]setValue:[NSString stringWithFormat:@"%d",count]forKey:@"COUNT"];
//        
//    }
    
//    UIButton * btn = (UIButton *)sender;
//    int btag = btn.tag;
//    
//    if(btag == 1){
//        
//        self.presscount1 ++;
//        [self.pressCountArray replaceObjectAtIndex:0 withObject:[NSNumber numberWithInt:self.presscount1]];
//        
//        if (self.presscount1 ==1) {
//            [btn setImage:[UIImage imageNamed:@"button2.png"]forState:UIControlStateNormal];
//        }
//        if (self.presscount1 ==2) {
//            [btn setImage:[UIImage imageNamed:@"button3.png"]forState:UIControlStateNormal];
//        }
//        if (self.presscount1 ==3) {
//            [btn setImage:[UIImage imageNamed:@"button4.png"]forState:UIControlStateNormal];
//        }
//
//        if (self.presscount1 > 3) {
//            self.presscount1 = 0;
//            //[btn setTitle:[NSString stringWithFormat:@""] forState:UIControlStateNormal];
//            [btn setImage:[UIImage imageNamed:@"button1.png"]forState:UIControlStateNormal];
//          //  [self.btn1 setImage:[imageNamed:@"button1.png"];
//           
//        }
//        
//        else
//            [btn setTitle:[NSString stringWithFormat:@"%i",self.presscount1] forState:UIControlStateNormal];
//        
//        [btn setImage:[UIImage imageNamed:@"button2.png"] forState:UIControlStateDisabled];
//    }
//    
//    else if (btag == 2){
//        
//        self.presscount2 ++;
//        
//        [self.pressCountArray replaceObjectAtIndex:1 withObject:[NSNumber numberWithInt:self.presscount2]];
//        if (self.presscount2 > 3) {
//            self.presscount2 = 0;
//            [btn setTitle:[NSString stringWithFormat:@""] forState:UIControlStateNormal];
//        }
//        
//        else
//            [btn setTitle:[NSString stringWithFormat:@"%i",self.presscount2] forState:UIControlStateNormal];
//    }
//    
//    else if (btag == 3){
//        
//        self.presscount3 ++;
//        
//        [self.pressCountArray replaceObjectAtIndex:2 withObject:[NSNumber numberWithInt:self.presscount3]];
//        if (self.presscount3 > 3) {
//            self.presscount3 = 0;
//            [btn setTitle:[NSString stringWithFormat:@""] forState:UIControlStateNormal];
//        }
//        
//        else
//            [btn setTitle:[NSString stringWithFormat:@"%i",self.presscount3] forState:UIControlStateNormal];
//    }
//    
//    else if (btag == 4){
//        
//        self.presscount4 ++;
//        
//        [self.pressCountArray replaceObjectAtIndex:3 withObject:[NSNumber numberWithInt:self.presscount4]];
//        if (self.presscount4 > 3) {
//            self.presscount4 = 0;
//            [btn setTitle:[NSString stringWithFormat:@""] forState:UIControlStateNormal];
//        }
//        
//        else
//            [btn setTitle:[NSString stringWithFormat:@"%i",self.presscount4] forState:UIControlStateNormal];
//    }
//    
//    else if (btag == 5){
//        
//        self.presscount5 ++;
//        
//        [self.pressCountArray replaceObjectAtIndex:4 withObject:[NSNumber numberWithInt:self.presscount5]];
//        if (self.presscount5 > 3) {
//            self.presscount5 = 0;
//            [btn setTitle:[NSString stringWithFormat:@""] forState:UIControlStateNormal];
//        }
//        
//        else
//            [btn setTitle:[NSString stringWithFormat:@"%i",self.presscount5] forState:UIControlStateNormal];
//    }
//    
//    else if (btag == 6){
//        
//        self.presscount6 ++;
//        
//        [self.pressCountArray replaceObjectAtIndex:5 withObject:[NSNumber numberWithInt:self.presscount6]];
//        if (self.presscount6 > 3) {
//            self.presscount6 = 0;
//            [btn setTitle:[NSString stringWithFormat:@""] forState:UIControlStateNormal];
//        }
//        
//        else
//            [btn setTitle:[NSString stringWithFormat:@"%i",self.presscount6] forState:UIControlStateNormal];
//    }
//    
//    else if (btag == 7){
//        
//        self.presscount7 ++;
//        
//        [self.pressCountArray replaceObjectAtIndex:6 withObject:[NSNumber numberWithInt:self.presscount7]];
//        if (self.presscount7 > 3) {
//            self.presscount7 = 0;
//            [btn setTitle:[NSString stringWithFormat:@""] forState:UIControlStateNormal];
//        }
//        
//        else
//            [btn setTitle:[NSString stringWithFormat:@"%i",self.presscount7] forState:UIControlStateNormal];
//    }
//    
//    else if (btag == 8){
//        
//        self.presscount8 ++;
//        
//        [self.pressCountArray replaceObjectAtIndex:7 withObject:[NSNumber numberWithInt:self.presscount8]];
//        if (self.presscount8 > 3) {
//            self.presscount8 = 0;
//            [btn setTitle:[NSString stringWithFormat:@""] forState:UIControlStateNormal];
//        }
//        
//        else
//            [btn setTitle:[NSString stringWithFormat:@"%i",self.presscount8] forState:UIControlStateNormal];
//    }
//    
//    else if (btag == 9){
//        
//        self.presscount9 ++;
//        
//        [self.pressCountArray replaceObjectAtIndex:8 withObject:[NSNumber numberWithInt:self.presscount9]];
//        if (self.presscount9 > 3) {
//            self.presscount9 = 0;
//            [btn setTitle:[NSString stringWithFormat:@""] forState:UIControlStateNormal];
//        }
//        
//        else
//            [btn setTitle:[NSString stringWithFormat:@"%i",self.presscount9] forState:UIControlStateNormal];
//    }
//    
//    else if (btag == 10){
//        
//        self.presscount10 ++;
//        
//        [self.pressCountArray replaceObjectAtIndex:9 withObject:[NSNumber numberWithInt:self.presscount10]];
//        if (self.presscount10 > 3) {
//            self.presscount10 = 0;
//            [btn setTitle:[NSString stringWithFormat:@""] forState:UIControlStateNormal];
//        }
//        
//        else
//            [btn setTitle:[NSString stringWithFormat:@"%i",self.presscount10] forState:UIControlStateNormal];
//    }
//    
//    else if (btag == 11){
//        
//        self.presscount11 ++;
//        
//        [self.pressCountArray replaceObjectAtIndex:10 withObject:[NSNumber numberWithInt:self.presscount11]];
//        if (self.presscount11 > 3) {
//            self.presscount11 = 0;
//            [btn setTitle:[NSString stringWithFormat:@""] forState:UIControlStateNormal];
//        }
//        
//        else
//            [btn setTitle:[NSString stringWithFormat:@"%i",self.presscount11] forState:UIControlStateNormal];
//    }
//    
//    else if (btag == 12){
//        
//        self.presscount12 ++;
//        
//        [self.pressCountArray replaceObjectAtIndex:11 withObject:[NSNumber numberWithInt:self.presscount12]];
//        if (self.presscount12 > 3) {
//            self.presscount12 = 0;
//            [btn setTitle:[NSString stringWithFormat:@""] forState:UIControlStateNormal];
//        }
//        
//        else
//            [btn setTitle:[NSString stringWithFormat:@"%i",self.presscount12] forState:UIControlStateNormal];
//    }
//    
//    else if (btag == 13){
//        
//        self.presscount13 ++;
//        
//        [self.pressCountArray replaceObjectAtIndex:12 withObject:[NSNumber numberWithInt:self.presscount13]];
//        if (self.presscount13 > 3) {
//            self.presscount13 = 0;
//            [btn setTitle:[NSString stringWithFormat:@""] forState:UIControlStateNormal];
//        }
//        
//        else
//            [btn setTitle:[NSString stringWithFormat:@"%i",self.presscount13] forState:UIControlStateNormal];
//    }
//    
//    else if (btag == 14){
//        
//        self.presscount14 ++;
//        
//        [self.pressCountArray replaceObjectAtIndex:13 withObject:[NSNumber numberWithInt:self.presscount14]];
//        if (self.presscount14 > 3) {
//            self.presscount14 = 0;
//            [btn setTitle:[NSString stringWithFormat:@""] forState:UIControlStateNormal];
//        }
//        
//        else
//            [btn setTitle:[NSString stringWithFormat:@"%i",self.presscount14] forState:UIControlStateNormal];
//    }
//    
//    else if (btag == 15){
//        
//        self.presscount15 ++;
//        
//        [self.pressCountArray replaceObjectAtIndex:14 withObject:[NSNumber numberWithInt:self.presscount15]];
//        if (self.presscount15 > 3) {
//            self.presscount15 = 0;
//            [btn setTitle:[NSString stringWithFormat:@""] forState:UIControlStateNormal];
//        }
//        
//        else
//            [btn setTitle:[NSString stringWithFormat:@"%i",self.presscount15] forState:UIControlStateNormal];
//    }
//    
//    else if (btag == 16){
//        
//        self.presscount16 ++;
//        
//        [self.pressCountArray replaceObjectAtIndex:15 withObject:[NSNumber numberWithInt:self.presscount16]];
//        if (self.presscount16 > 3) {
//            self.presscount16 = 0;
//            [btn setTitle:[NSString stringWithFormat:@""] forState:UIControlStateNormal];
//        }
//        
//        else
//            [btn setTitle:[NSString stringWithFormat:@"%i",self.presscount16] forState:UIControlStateNormal];
//    }
//    
    


- (IBAction)clear:(id)sender {
    
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

