//
//  ViewController.m
//  FundTransfer
//
//  Created by Lakshmi on 7/28/18.
//  Copyright © 2018 Lakshmi. All rights reserved.
//

#import "ViewController.h"
#import "FromAccountTableViewCell.h"

@interface ViewController (){
 //   CGFloat roheight;
}
@property (weak, nonatomic) IBOutlet UITableView *tblTransferForm;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  //  self.tblTransferForm.estimatedRowHeight = 50;
   // self.tblTransferForm.rowHeight = UITableViewAutomaticDimension;
    
 //   roheight = 40;

    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"amountCell";
    
    FromAccountTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"FromAccountTableViewCell" bundle:nil] forCellReuseIdentifier:@"amountCell"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"amountCell"];
    }
    cell.dynamicDelegate = self;
    cell.lblTitle.text = @"Amount";
    cell.txtCommunication.scrollEnabled = false;
    cell.indexPath = indexPath;
    // Configure the cell.
    return cell;
}

-(void)increaseHeight:(NSIndexPath*)indexPath  WithText:(NSString*)text{
    [self.tblTransferForm beginUpdates];

    NSInteger MAX_HEIGHT = 200;
    UITextView * textView = [[UITextView alloc] initWithFrame: CGRectMake(0, 0, 100, MAX_HEIGHT)];
    textView.text = text;
    textView.font  = [UIFont systemFontOfSize:16]; // your font
    [textView sizeToFit];
  //  roheight = textView.frame.size.height;
    [self.tblTransferForm endUpdates];


   // [self.tblTransferForm reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];

}


/*- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return roheight;
   // return UITableViewAutomaticDimension;
}*/

/*- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return UITableViewAutomaticDimension;
}*/
@end
