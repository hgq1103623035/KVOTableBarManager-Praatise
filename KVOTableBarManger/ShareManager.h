//
//  ShareManager.h
//  KVOTableBarManger
//
//  Created by mac on 16/2/19.
//  Copyright © 2016年 Myteam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface ShareManager : NSObject
@property(nonatomic,retain)UIColor *color;
+(ShareManager *)sharedManager;
@end
