//
//  ViewController.h
//  HeliGame
//
//  Created by luowei on 14-6-3.
//  Copyright (c) 2014年 rootls. All rights reserved.
//

#import <UIKit/UIKit.h>

int Y;
BOOL Start;
int randomPosition;

@interface ViewController : UIViewController{
    NSTimer *timer;
}

@property (weak, nonatomic) IBOutlet UILabel *intro1;
@property (weak, nonatomic) IBOutlet UILabel *intro2;
@property (weak, nonatomic) IBOutlet UILabel *intro3;

@property (weak, nonatomic) IBOutlet UIImageView *heli;

@property (weak, nonatomic) IBOutlet UIImageView *obstacle;
@property (weak, nonatomic) IBOutlet UIImageView *obstacle2;

@property (weak, nonatomic) IBOutlet UIImageView *bottom1;
@property (weak, nonatomic) IBOutlet UIImageView *bottom2;
@property (weak, nonatomic) IBOutlet UIImageView *bottom3;
@property (weak, nonatomic) IBOutlet UIImageView *bottom4;
@property (weak, nonatomic) IBOutlet UIImageView *bottom5;
@property (weak, nonatomic) IBOutlet UIImageView *bottom6;


@property (weak, nonatomic) IBOutlet UIImageView *top1;
@property (weak, nonatomic) IBOutlet UIImageView *top2;
@property (weak, nonatomic) IBOutlet UIImageView *top3;
@property (weak, nonatomic) IBOutlet UIImageView *top4;
@property (weak, nonatomic) IBOutlet UIImageView *top5;
@property (weak, nonatomic) IBOutlet UIImageView *top6;

-(void)heliMove;

@end
