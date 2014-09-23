//
//  ViewController.h
//  percussion
//
//  Created by George Francis on 29/07/2014.
//  Copyright (c) 2014 GeorgeFrancis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SoundPlayer.h"
#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioToolbox.h>
#import "MasterViewController.h"


@interface CongaSequencerViewController : UIViewController

@property BOOL playing;

@property NSURL *sound1URL;
@property NSURL *sound2URL;
@property NSURL *sound3URL;
@property NSURL *sound4URL;

@property (nonatomic, strong) SoundPlayer *soundPlayer;
@property (strong, nonatomic) IBOutlet UIImageView *timerBarImage;


@property float btnTimer1;
@property float btnTimer2;
@property float btnTimer3;
@property float btnTimer4;
@property float btnTimer5;
@property float btnTimer6;
@property float btnTimer7;
@property float btnTimer8;
@property float btnTimer9;
@property float btnTimer10;
@property float btnTimer11;
@property float btnTimer12;
@property float btnTimer13;
@property float btnTimer14;
@property float btnTimer15;
@property float btnTimer16;

@property int presscount1;
@property int presscount2;
@property int presscount3;
@property int presscount4;
@property int presscount5;
@property int presscount6;
@property int presscount7;
@property int presscount8;
@property int presscount9;
@property int presscount10;
@property int presscount11;
@property int presscount12;
@property int presscount13;
@property int presscount14;
@property int presscount15;
@property int presscount16;

@property int press2count1;
@property int press2count2;
@property int press2count3;
@property int press2count4;
@property int press2count5;
@property int press2count6;
@property int press2count7;
@property int press2count8;
@property int press2count9;
@property int press2count10;
@property int press2count11;
@property int press2count12;
@property int press2count13;
@property int press2count14;
@property int press2count15;
@property int press2count16;

@property int press3count1;
@property int press3count2;
@property int press3count3;
@property int press3count4;
@property int press3count5;
@property int press3count6;
@property int press3count7;
@property int press3count8;
@property int press3count9;
@property int press3count10;
@property int press3count11;
@property int press3count12;
@property int press3count13;
@property int press3count14;
@property int press3count15;
@property int press3count16;

@property int press4count1;
@property int press4count2;
@property int press4count3;
@property int press4count4;
@property int press4count5;
@property int press4count6;
@property int press4count7;
@property int press4count8;
@property int press4count9;
@property int press4count10;
@property int press4count11;
@property int press4count12;
@property int press4count13;
@property int press4count14;
@property int press4count15;
@property int press4count16;

@property NSTimer *timer;
@property float timerCounter;
@property float tempoCount;
@property float bpm;

@property NSMutableArray *pressCountArray;
@property NSMutableArray *pressCountArray2;
@property NSMutableArray *pressCountArray3;
@property NSMutableArray *pressCountArray4;

@property NSInteger numberOfRows;

@property NSMutableArray *countArray;
@property int savedCount;


@property NSMutableArray *btnTimerArray;
@property (strong, nonatomic) IBOutlet UIImageView *tempoImageText;

@property (strong, nonatomic) IBOutlet UILabel *tempoLabel;

@property (strong, nonatomic)IBOutletCollection(UIButton) NSArray *buttons;
@property (strong, nonatomic)IBOutletCollection(UIButton) NSArray *buttons2;
@property (strong, nonatomic)IBOutletCollection(UIButton) NSArray *buttons3;
@property (strong, nonatomic)IBOutletCollection(UIButton) NSArray *buttons4;

@property (strong, nonatomic)IBOutletCollection(UIButton) NSArray *interfaceButtons;

@property (strong, nonatomic) IBOutlet UIButton *playButton;

@property (strong, nonatomic) IBOutlet UIButton *bongo1Button;
@property (strong, nonatomic) IBOutlet UIButton *bongo2Button;
@property (strong, nonatomic) IBOutlet UIButton *bongo3Button;
@property (strong, nonatomic) IBOutlet UIButton *bongo4Button;

@property (strong, nonatomic) IBOutlet UIImageView *bongoImage;


- (IBAction)bongoPlay:(id)sender;
- (IBAction)pressCountBtn:(id)sender;
- (IBAction)pressCountBtn2:(id)sender;
- (IBAction)pressCountBtn3:(id)sender;
- (IBAction)pressCountBtn4:(id)sender;

- (IBAction)increaseTempo:(id)sender;
- (IBAction)decreaseTempo:(id)sender;

- (IBAction)clear:(id)sender;

- (IBAction)saveNameBeat1:(id)sender;
- (IBAction)saveNameBeat2:(id)sender;
- (IBAction)saveNameBeat3:(id)sender;

@property (strong, nonatomic) IBOutlet UIButton *beatName1;
@property (strong, nonatomic) IBOutlet UIButton *beatName2;
@property (strong, nonatomic) IBOutlet UIButton *beatName3;

- (IBAction)saveBeat1:(id)sender;
- (IBAction)loadBeat1:(id)sender;
- (IBAction)saveBeat2:(id)sender;
- (IBAction)loadBeat2:(id)sender;
- (IBAction)saveBeat3:(id)sender;
- (IBAction)loadBeat3:(id)sender;

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *saveLoadBeat1;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *saveLoadBeat2;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *saveLoadBeat3;




- (IBAction)playsound:(id)sender;
@end
