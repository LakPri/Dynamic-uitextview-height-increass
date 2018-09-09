//
//  FromAccountTableViewCell.h
//  FundTransfer
//
//  Created by Lakshmi on 7/28/18.
//  Copyright © 2018 Lakshmi. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol DynamicHeight
-(void)increaseHeight:(NSIndexPath*)indexPath  WithText:(NSString*)text;
@end


@interface FromAccountTableViewCell : UITableViewCell<UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *lblTitle;
@property (weak, nonatomic) IBOutlet UITextField *txtAmount;
@property (weak, nonatomic) IBOutlet UITextView *txtCommunication;
@property (nonatomic, strong) id<DynamicHeight> dynamicDelegate;
@property (nonatomic, strong) NSIndexPath * indexPath;


@end
