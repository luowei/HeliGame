//
//  ViewController.m
//  HeliGame
//
//  Created by luowei on 14-6-3.
//  Copyright (c) 2014年 rootls. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

-(void)heliMove{
    _heli.center = CGPointMake(_heli.center.x, _heli.center.y+Y);
    
    _obstacle.center = CGPointMake(_obstacle.center.x - 10, _obstacle.center.y);
    _obstacle2.center = CGPointMake(_obstacle2.center.x - 10, _obstacle2.center.y);
    _bottom1.center = CGPointMake(_bottom1.center.x-10, _bottom1.center.y);
    _bottom2.center = CGPointMake(_bottom2.center.x-10, _bottom2.center.y);
    _bottom3.center = CGPointMake(_bottom3.center.x-10, _bottom3.center.y);
    _bottom4.center = CGPointMake(_bottom4.center.x-10, _bottom4.center.y);
    _bottom5.center = CGPointMake(_bottom5.center.x-10, _bottom5.center.y);
    _bottom6.center = CGPointMake(_bottom6.center.x-10, _bottom6.center.y);
    _top1.center = CGPointMake(_top1.center.x-10, _top1.center.y);
    _top2.center = CGPointMake(_top2.center.x-10, _top2.center.y);
    _top3.center = CGPointMake(_top3.center.x-10, _top3.center.y);
    _top4.center = CGPointMake(_top4.center.x-10, _top4.center.y);
    _top5.center = CGPointMake(_top5.center.x-10, _top5.center.y);
    _top6.center = CGPointMake(_top6.center.x-10, _top6.center.y);
    
    if(_obstacle.center.x < 0){
        randomPosition = arc4random() %75;
        randomPosition += 110;
        _obstacle.center = CGPointMake(510, randomPosition);
    }
    if(_obstacle2.center.x < 0){
        randomPosition = arc4random() %75;
        randomPosition += 110;
        _obstacle2.center = CGPointMake(510, randomPosition);
    }
    if(_top1.center.x < -30){
        randomPosition = arc4random() %55;
        _top1.center = CGPointMake(510, randomPosition);
        randomPosition += 280;
        _bottom1.center = CGPointMake(510, randomPosition);
    }
    if(_top2.center.x < -30){
        randomPosition = arc4random() %55;
        _top2.center = CGPointMake(510, randomPosition);
        randomPosition += 280;
        _bottom2.center = CGPointMake(510, randomPosition);
    }
    if(_top3.center.x < -30){
        randomPosition = arc4random() %55;
        _top3.center = CGPointMake(510, randomPosition);
        randomPosition += 280;
        _bottom3.center = CGPointMake(510, randomPosition);
    }
    if(_top4.center.x < -30){
        randomPosition = arc4random() %55;
        _top4.center = CGPointMake(510, randomPosition);
        randomPosition += 280;
        _bottom4.center = CGPointMake(510, randomPosition);
    }
    if(_top5.center.x < -30){
        randomPosition = arc4random() %55;
        _top5.center = CGPointMake(510, randomPosition);
        randomPosition += 280;
        _bottom5.center = CGPointMake(510, randomPosition);
    }
    if(_top6.center.x < -30){
        randomPosition = arc4random() %55;
        _top6.center = CGPointMake(510, randomPosition);
        randomPosition += 280;
        _bottom6.center = CGPointMake(510, randomPosition);
    }
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    if(Start == YES){
        _intro1.hidden = YES;
        _intro2.hidden = YES;
        self.intro3.hidden = YES;
        
        timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(heliMove) userInfo:nil repeats:YES];
        Start = NO;
        
        _bottom1.hidden = NO;
        _bottom2.hidden = NO;
        _bottom3.hidden = NO;
        _bottom4.hidden = NO;
        _bottom5.hidden = NO;
        _bottom6.hidden = NO;
        _top1.hidden = NO;
        _top2.hidden = NO;
        _top3.hidden = NO;
        _top4.hidden = NO;
        _top5.hidden = NO;
        _top6.hidden = NO;
        _obstacle.hidden = NO;
        _obstacle2.hidden = NO;
        
        randomPosition = arc4random() %75;
        randomPosition += 110;
        _obstacle.center = CGPointMake(570, randomPosition);
        
        randomPosition = arc4random() %75;
        randomPosition += 110;
        _obstacle2.center = CGPointMake(850, randomPosition);
        
        randomPosition = arc4random() %55;
        _top1.center = CGPointMake(540, randomPosition);
        randomPosition += 265;
        _bottom1.center = CGPointMake(540, randomPosition);
        
        randomPosition = arc4random() %55;
        _top1.center = CGPointMake(640, randomPosition);
        randomPosition += 265;
        _bottom2.center = CGPointMake(640, randomPosition);
        
        randomPosition = arc4random() %55;
        _top1.center = CGPointMake(740, randomPosition);
        randomPosition += 265;
        _bottom3.center = CGPointMake(740, randomPosition);
        
        randomPosition = arc4random() %55;
        _top1.center = CGPointMake(840, randomPosition);
        randomPosition += 265;
        _bottom4.center = CGPointMake(840, randomPosition);
        
        randomPosition = arc4random() %55;
        _top1.center = CGPointMake(940, randomPosition);
        randomPosition += 265;
        _bottom5.center = CGPointMake(940, randomPosition);
        
        randomPosition = arc4random() %55;
        _top1.center = CGPointMake(1040, randomPosition);
        randomPosition += 265;
        _bottom6.center = CGPointMake(1040, randomPosition);
    }
    Y = -7;
    _heli.image = [UIImage imageNamed:@"HeliUp.png"];
    
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    Y = 7;
    _heli.image = [UIImage imageNamed:@"HeliDown.png"];
    
}

- (void)viewDidLoad
{
    Start = YES;
    _bottom1.hidden = YES;
    _bottom2.hidden = YES;
    _bottom3.hidden = YES;
    _bottom4.hidden = YES;
    _bottom5.hidden = YES;
    _bottom6.hidden = YES;
    _top1.hidden = YES;
    _top2.hidden = YES;
    _top3.hidden = YES;
    _top4.hidden = YES;
    _top5.hidden = YES;
    _top6.hidden = YES;
    _obstacle.hidden = YES;
    _obstacle2.hidden = YES;
    
    [super viewDidLoad];
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
