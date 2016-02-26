//
//  ShareManager.m
//  KVOTableBarManger
//
//  Created by mac on 16/2/19.
//  Copyright © 2016年 Myteam. All rights reserved.
//

#import "ShareManager.h"

@implementation ShareManager


//单例类

+(ShareManager *)sharedManager
{

    static ShareManager *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[self alloc]init ];
    });
    return manager;

}

-(id)init
{

    self = [super init];
    if (self) {
        
    }
    return self;


}



@end
