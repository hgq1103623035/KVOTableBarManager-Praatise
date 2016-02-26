//
//  FirstViewController.m
//  KVOTableBarManger
//
//  Created by mac on 16/2/19.
//  Copyright © 2016年 Myteam. All rights reserved.
//

#import "FirstViewController.h"
#import "ShareManager.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    ShareManager *manager = [ShareManager sharedManager];
    CGFloat color1 = arc4random()%255;
    CGFloat color2 = arc4random()%255;
    CGFloat color3 = arc4random()%255;
    
    manager.color = [UIColor colorWithRed:color1/255.0 green:color2/255.0 blue:color3/255.0 alpha:1];
    [manager addObserver:self forKeyPath:@"color" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionInitial context:nil];

}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context
{

    self.view.backgroundColor = [change objectForKey:@"new"];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
