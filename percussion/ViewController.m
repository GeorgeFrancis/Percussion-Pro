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
    self.pressCountArray5 = [[NSMutableArray alloc]init];

    self.btnTimerArray = [[NSMutableArray alloc]init];
    self.timerCounter = 0;
    self.playing = NO;
    [self createSoundURLs];
    [self setUpPressedCount];
    [self setUpBtnTimes];
    self.numberOfRows = 3;
    self.countArray = [[NSMutableArray alloc]initWithCapacity:self.numberOfRows];
    self.tempoCount = 0.25;
    self.bpm = 15 / self.tempoCount;
    [self.tempoLabel setText:[NSString stringWithFormat:@"%.0f bpm",self.bpm]];
    [self hideSaveButtons];
    self.buttonCount = -1;
    
    [super viewDidLoad];
 }

- (IBAction)increaseTempo:(id)sender {
    
    [self.timer invalidate];
    
    
    self.tempoCount = self.tempoCount -0.05;
    
    if (self.tempoCount < 0.1) {
        self.tempoCount = 0.1;
    }
    
    self.bpm = 60 / self.tempoCount;
    
    [self.tempoLabel setText:[NSString stringWithFormat:@"%.0f bpm",self.bpm]];
    
    [self timerSetup];
    
}

- (IBAction)decreaseTempo:(id)sender {
    
    [self.timer invalidate];
    
    self.tempoCount = self.tempoCount +0.05;
    
    self.bpm = 60 / self.tempoCount;
    
    [self.tempoLabel setText:[NSString stringWithFormat:@"%.0f bpm",self.bpm]];
    
    [self timerSetup];

}

-(void)timerSetup{
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:self.tempoCount target:self selector:@selector(playBeat)
                                                  userInfo:nil repeats:YES];
}


-(void)playBeat{
    
    self.timerCounter = self.timerCounter + 0.25;
 //   self.timerBarImage.center = CGPointMake(self.timerBarImage.center.x +32.06, self.timerBarImage.center.y);
    
//    if (self.timerBarImage.center.x == 543 ) {
//        self.timerBarImage.center =CGPointMake(20,self.timerBarImage.center.y);
//    }
    
    
  //  if (self.timerBarImage.center.x > 543) {
  //      self.timerBarImage.center =CGPointMake(20, 102);

  //  }
  
//    self.buttonCount ++;
//    
//    UIButton * btn = self.buttons2[self.buttonCount];
//        
//    [btn setImage:[UIImage imageNamed:@"redButton.png"] forState:UIControlStateNormal];
//    
//    if (self.buttonCount ==15) {
//        self.buttonCount = -1;
//    }
//    
//    
//        
//  
    
    
    
    
    if (self.timerCounter == 4.25) {
        self.timerCounter = 0.25;
    }
    
//    if (self.timerBarImage.center = CGPointMake(self.timerBarImage.center.x == 545){
//           [self.timerBarImage setFrame:CGRectMake(20, 142, self.timerBarImage.frame.size.width, self.timerBarImage.frame.size.height)];
//    }
//    
    
 
   
    
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
    
    for (NSInteger i = 0; i < [self.pressCountArray5 count]; i++){
        
        
        if ([[self.pressCountArray5 objectAtIndex:i] integerValue]>0 && [[self.btnTimerArray objectAtIndex:i]floatValue] == self.timerCounter) {
            
            switch ([[self.pressCountArray5 objectAtIndex:i] integerValue]) {
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
        [self.playButton setImage:[UIImage imageNamed:@"stop.png"] forState:UIControlStateNormal];
        self.playing = YES;
        [self timerSetup];
       // [self.timerBarImage setHidden:NO];
    }
    
    else if (self.playing){
        [self.playButton setImage:[UIImage imageNamed:@"play.png"] forState:UIControlStateNormal];
        self.playing = NO;
        [self stopTimer];
     //   [self.timerBarImage setHidden:YES];
    }
}

- (void)createSoundURLs
{
    NSString *soundFile1 = [[NSBundle mainBundle] pathForResource:@"RightBongo" ofType:@"wav"];
    self.sound1URL = [NSURL fileURLWithPath:soundFile1];
    
    NSString *soundFile2 = [[NSBundle mainBundle] pathForResource:@"LeftBongo" ofType:@"wav"];
    self.sound2URL = [NSURL fileURLWithPath:soundFile2];
    
    NSString *soundFile3 = [[NSBundle mainBundle] pathForResource:@"LeftBongoEdge" ofType:@"wav"];
    self.sound3URL = [NSURL fileURLWithPath:soundFile3];
    
    NSString *soundFile4 = [[NSBundle mainBundle] pathForResource:@"RightBongoEdge" ofType:@"wav"];
    self.sound4URL = [NSURL fileURLWithPath:soundFile4];

    NSString *soundFile5 = [[NSBundle mainBundle] pathForResource:@"RightBongoEdge" ofType:@"wav"];
    self.sound5URL = [NSURL fileURLWithPath:soundFile5];}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


- (IBAction)pressCountBtn:(id)sender {
    
         UIButton * btn = (UIButton *)sender;
    [self incButtonImage:btn andArray: self.pressCountArray];
}

- (IBAction)pressCountBtn2:(id)sender {
    
    UIButton * btn = (UIButton *)sender;
    [self incButtonImage:btn andArray:self.pressCountArray2];
}

- (IBAction)pressCountBtn3:(id)sender {
    
    UIButton * btn = (UIButton *)sender;
    [self incButtonImage:btn andArray:self.pressCountArray3];
}

- (IBAction)pressCountBtn4:(id)sender {
    
    UIButton * btn = (UIButton *)sender;
    [self incButtonImage:btn andArray:self.pressCountArray4];
    
}

- (IBAction)pressCountBtn5:(id)sender {
    
    UIButton * btn = (UIButton *)sender;
    [self incButtonImage:btn andArray:self.pressCountArray5];
}

-(void)incButtonImage:(UIButton *) btn andArray:(NSMutableArray *) array{
        int btag = btn.tag;
        
        int curCnt = [[array objectAtIndex:btag] intValue];
        curCnt ++;
    
    if (curCnt == 4) {
        curCnt = 0;
    }
    
    
    [array replaceObjectAtIndex:btag withObject:[NSNumber numberWithInt:curCnt]];
    
    [self setButtonImage:btn andArray:array];
}

-(void)setButtonImage:(UIButton *) btn andArray:(NSMutableArray *) array{
    int btag = btn.tag;
    
    int curCnt = [[array objectAtIndex:btag] intValue];

        if (curCnt == 4)
        {
            curCnt = 0;
          
                    }
    
            switch (curCnt) {
                    case 0:
                    [btn setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
                    break;
                    
                case 1:
                     [btn setImage:[UIImage imageNamed:@"lowVolumeImage.png"] forState:UIControlStateNormal];
                    break;
                case 2:
                    [btn setImage:[UIImage imageNamed:@"mediumVolumeImage.png"] forState:UIControlStateNormal];
                    break;
                case 3:
                    [btn setImage:[UIImage imageNamed:@"highVolumeImage.png"] forState:UIControlStateNormal];
                    break;
                default:
                    break;
        }
}

- (IBAction)clear:(id)sender {
    
    for (NSInteger i = 0; i < [self.pressCountArray count]; i++){
        self.pressCountArray[i] = @0;
        self.pressCountArray2[i] = @0;
        self.pressCountArray3[i] = @0;
        self.pressCountArray4[i] = @0;
        self.pressCountArray5[i] = @0;
    }
    
    for (NSInteger i = 0; i < [self.buttons count]; i++){
        UIButton *  btn = self.buttons[i];
        UIButton *  btn2 = self.buttons2[i];
        UIButton *  btn3 = self.buttons3[i];
        UIButton *  btn4 = self.buttons4[i];
        UIButton *  btn5 = self.buttons5[i];

        [btn setImage:[UIImage imageNamed:@"greyButton.png"] forState:UIControlStateNormal];
        [btn2 setImage:[UIImage imageNamed:@"blueButton.png"] forState:UIControlStateNormal];
        [btn3 setImage:[UIImage imageNamed:@"greenButton.png"] forState:UIControlStateNormal];
        [btn4 setImage:[UIImage imageNamed:@"redButton.png"] forState:UIControlStateNormal];
        [btn5 setImage:[UIImage imageNamed:@"redButton.png"] forState:UIControlStateNormal];
      }
}

- (IBAction)saveNameBeat1:(id)sender {
    
    [self.saveLoadBeat1 setValue:[NSNumber numberWithBool:NO] forKey:@"hidden"];
    [self.saveLoadBeat2 setValue:[NSNumber numberWithBool:YES] forKeyPath:@"hidden"];
    [self.saveLoadBeat3 setValue:[NSNumber numberWithBool:YES] forKeyPath:@"hidden"];
}

- (IBAction)saveNameBeat2:(id)sender {
    
    [self.saveLoadBeat2 setValue:[NSNumber numberWithBool:NO] forKey:@"hidden"];
    [self.saveLoadBeat1 setValue:[NSNumber numberWithBool:YES] forKeyPath:@"hidden"];
    [self.saveLoadBeat3 setValue:[NSNumber numberWithBool:YES] forKeyPath:@"hidden"];

    
}

- (IBAction)saveNameBeat3:(id)sender {
    
    [self.saveLoadBeat3 setValue:[NSNumber numberWithBool:NO] forKey:@"hidden"];
    [self.saveLoadBeat1 setValue:[NSNumber numberWithBool:YES] forKeyPath:@"hidden"];
    [self.saveLoadBeat2 setValue:[NSNumber numberWithBool:YES] forKeyPath:@"hidden"];

}

-(void)hideSaveButtons{
    
    [self.saveLoadBeat1 setValue:[NSNumber numberWithBool:YES] forKey:@"hidden"];
    [self.saveLoadBeat2 setValue:[NSNumber numberWithBool:YES] forKey:@"hidden"];
    [self.saveLoadBeat3 setValue:[NSNumber numberWithBool:YES] forKey:@"hidden"];
}

- (IBAction)saveBeat1:(id)sender{
    
    [self saveBeat1Method];
    [self hideSaveButtons];
    
}

- (IBAction)loadBeat1:(id)sender {
    
    [self loadBeat1Method];
    [self hideSaveButtons];
}

- (IBAction)saveBeat2:(id)sender {
    
    [self saveBeat2Method];
    [self hideSaveButtons];
}

- (IBAction)loadBeat2:(id)sender {
    
    [self loadBeat2Method];
    [self hideSaveButtons];
}

- (IBAction)saveBeat3:(id)sender {
    
    [self saveBeat3Method];
    [self hideSaveButtons];
}

- (IBAction)loadBeat3:(id)sender {
    
    [self loadBeat3Method];
    [self hideSaveButtons];
}

-(void)saveBeat1Method{
    
    [[NSUserDefaults standardUserDefaults] setObject:self.pressCountArray forKey:@"beat1row1"];
    [[NSUserDefaults standardUserDefaults] setObject:self.pressCountArray2 forKey:@"beat1row2"];
    [[NSUserDefaults standardUserDefaults] setObject:self.pressCountArray3 forKey:@"beat1row3"];
    [[NSUserDefaults standardUserDefaults] setObject:self.pressCountArray4 forKey:@"beat1row4"];
    [[NSUserDefaults standardUserDefaults] setObject:self.pressCountArray5 forKey:@"beat1row5"];

}

-(void)saveBeat2Method{
    
    [[NSUserDefaults standardUserDefaults] setObject:self.pressCountArray forKey:@"beat2row1"];
    [[NSUserDefaults standardUserDefaults] setObject:self.pressCountArray2 forKey:@"beat2row2"];
    [[NSUserDefaults standardUserDefaults] setObject:self.pressCountArray3 forKey:@"beat2row3"];
    [[NSUserDefaults standardUserDefaults] setObject:self.pressCountArray4 forKey:@"beat2row4"];
    [[NSUserDefaults standardUserDefaults] setObject:self.pressCountArray5 forKey:@"beat2row5"];

}

-(void)saveBeat3Method{
    
    [[NSUserDefaults standardUserDefaults] setObject:self.pressCountArray forKey:@"beat3row1"];
    [[NSUserDefaults standardUserDefaults] setObject:self.pressCountArray2 forKey:@"beat3row2"];
    [[NSUserDefaults standardUserDefaults] setObject:self.pressCountArray3 forKey:@"beat3row3"];
    [[NSUserDefaults standardUserDefaults] setObject:self.pressCountArray4 forKey:@"beat3row4"];
    [[NSUserDefaults standardUserDefaults] setObject:self.pressCountArray5 forKey:@"beat3row5"];

}

-(void)loadBeat1Method{
    
    NSMutableArray* beat1row1array = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"beat1row1"]];
    NSMutableArray* beat1row2array = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"beat1row2"]];
    NSMutableArray* beat1row3array = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"beat1row3"]];
    NSMutableArray* beat1row4array = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"beat1row4"]];
    NSMutableArray* beat1row5array = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"beat1row5"]];

    self.pressCountArray = beat1row1array;
    self.pressCountArray2 = beat1row2array;
    self.pressCountArray3 = beat1row3array;
    self.pressCountArray4 = beat1row4array;
    self.pressCountArray5 = beat1row5array;
    
    [self setButtonsToSavedArray];
}

-(void)loadBeat2Method{
    
    NSMutableArray* beat2row1array = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"beat2row1"]];
    NSMutableArray* beat2row2array = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"beat2row2"]];
    NSMutableArray* beat2row3array = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"beat2row3"]];
    NSMutableArray* beat2row4array = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"beat2row4"]];
    NSMutableArray* beat2row5array = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"beat2row5"]];
    
    self.pressCountArray = beat2row1array;
    self.pressCountArray2 = beat2row2array;
    self.pressCountArray3 = beat2row3array;
    self.pressCountArray4 = beat2row4array;
    self.pressCountArray5 = beat2row5array;
    
    [self setButtonsToSavedArray];
}

-(void)loadBeat3Method{
    
    NSMutableArray* beat3row1array = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"beat3row1"]];
    NSMutableArray* beat3row2array = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"beat3row2"]];
    NSMutableArray* beat3row3array = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"beat3row3"]];
    NSMutableArray* beat3row4array = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"beat3row4"]];
    NSMutableArray* beat3row5array = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"beat3row5"]];
    
    self.pressCountArray = beat3row1array;
    self.pressCountArray2 = beat3row2array;
    self.pressCountArray3 = beat3row3array;
    self.pressCountArray4 = beat3row4array;
    self.pressCountArray5 = beat3row5array;

    
    [self setButtonsToSavedArray];
}


-(void)setButtonsToSavedArray{
    
    for (NSInteger i = 0; i < [self.buttons count]; i++){
        
        UIButton *  btn = self.buttons[i];
        [self setButtonImage:btn andArray:self.pressCountArray];
    }
    
    for (NSInteger i = 0; i < [self.buttons2 count]; i++){
        
        UIButton *  btn = self.buttons2[i];
        [self setButtonImage:btn andArray:self.pressCountArray2];
    }
    for (NSInteger i = 0; i < [self.buttons3 count]; i++){
        
        UIButton *  btn = self.buttons3[i];
        [self setButtonImage:btn andArray:self.pressCountArray3];
    }
    for (NSInteger i = 0; i < [self.buttons4 count]; i++){
        
        UIButton *  btn = self.buttons4[i];
        [self setButtonImage:btn andArray:self.pressCountArray4];
    }
    
    for (NSInteger i = 0; i < [self.buttons5 count]; i++){
        
        UIButton *  btn = self.buttons5[i];
        [self setButtonImage:btn andArray:self.pressCountArray5];
    }

    
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
    
    [self.pressCountArray5 addObject:@(self.press5count1)];
    [self.pressCountArray5 addObject:[NSNumber numberWithInt:self.press5count2]];
    [self.pressCountArray5 addObject:[NSNumber numberWithInt:self.press5count3]];
    [self.pressCountArray5 addObject:[NSNumber numberWithInt:self.press5count4]];
    [self.pressCountArray5 addObject:[NSNumber numberWithInt:self.press5count5]];
    [self.pressCountArray5 addObject:[NSNumber numberWithInt:self.press5count6]];
    [self.pressCountArray5 addObject:[NSNumber numberWithInt:self.press5count7]];
    [self.pressCountArray5 addObject:[NSNumber numberWithInt:self.press5count8]];
    [self.pressCountArray5 addObject:[NSNumber numberWithInt:self.press5count9]];
    [self.pressCountArray5 addObject:[NSNumber numberWithInt:self.press5count10]];
    [self.pressCountArray5 addObject:[NSNumber numberWithInt:self.press5count11]];
    [self.pressCountArray5 addObject:[NSNumber numberWithInt:self.press5count12]];
    [self.pressCountArray5 addObject:[NSNumber numberWithInt:self.press5count13]];
    [self.pressCountArray5 addObject:[NSNumber numberWithInt:self.press5count14]];
    [self.pressCountArray5 addObject:[NSNumber numberWithInt:self.press5count15]];
    [self.pressCountArray5 addObject:[NSNumber numberWithInt:self.press5count16]];
    
    for (NSInteger i = 0; i < [self.pressCountArray4 count]; i++){
        
        self.pressCountArray4[i] = @0;
        
    }

    
    
    
}


@end
