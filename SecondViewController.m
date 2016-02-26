//
//  SecondViewController.m
//  KVOTableBarManger
//
//  Created by mac on 16/2/19.
//  Copyright © 2016年 Myteam. All rights reserved.
//

#import "SecondViewController.h"
#import "ShareManager.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    ShareManager *manager = [ShareManager sharedManager];
    [manager addObserver:self forKeyPath:@"color" options:NSKeyValueObservingOptionNew context:nil];
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
