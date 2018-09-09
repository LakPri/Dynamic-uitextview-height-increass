//
//  FromAccountTableViewCell.m
//  FundTransfer
//
//  Created by Lakshmi on 7/28/18.
//  Copyright © 2018 Lakshmi. All rights reserved.
//

#import "FromAccountTableViewCell.h"

@implementation FromAccountTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.lblTitle.text = @"Amount";
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

#pragma mark - TextField Delegate Methods

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    return YES;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if(![textField.text isEqualToString:@""]){
  /*  self.txtAmount.text = [self.amountFormatter deFormatDecimalValue:textField.text withLang:[LanguageManager getLanguage]];
    }
    self.lblCurrency.hidden = NO;
    self.lblTitle.textColor = [StyleManager textDarkColor];*/
}
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    
    return YES;
}

- (void)textFieldDidEndEditing:(UITextField *)textField{
    
  /*  if(![textField.text isEqualToString:@""])
        self.lblAmount.text =  self.txtAmount.text = [self.amountFormatter formatDecimalValue:textField.text withLang: [LanguageManager getLanguage]];
    else
        self.lblCurrency.hidden = YES;
    
    [self endEditing:YES];*/
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    
    NSString *newString = [self.txtAmount.text stringByReplacingCharactersInRange:range withString:string];
    
  /*  if([self.amountFormatter isValidDecimalValue:newString withLang: [LanguageManager getLanguage]] && [self.amountFormatter isValidMaxValue:newString withLang:[LanguageManager getLanguage]]){
        self.lblAmount.text = self.txtAmount.text = [self.amountFormatter formatAmount:newString withLang: [LanguageManager getLanguage]];
    }else{
        NSLog(@"Not a Valid Decimal Values");
    }*/
    return NO;
}
- (void)textViewDidChange:(UITextView *)textView{
    [self.dynamicDelegate increaseHeight:self.indexPath WithText:textView.text];
}
- (void)textViewDidBeginEditing:(UITextView *)textView{
    
}

@end
