//
//  ComplaintsViewController.m
//  tourongzhuanjia
//
//  Created by Rhino on 16/5/27.
//  Copyright © 2016年 JWZhang. All rights reserved.
//

#import "ComplaintsViewController.h"
//#import "ComplaintsMsgViewController.h"
#import "TRZXComplaintCell.h"

@interface ComplaintsViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong)UITableView *tableView;
@property (nonatomic,strong)NSArray *dataSource;

@property (nonatomic,assign)NSUInteger index;

@property (nonatomic, strong)UIImageView *tickImageView;

@end

@implementation ComplaintsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initData];
    [self setNaviBar];
    [self createUI];
}

- (void)initData
{
    self.dataSource = @[@"色情",@"赌博",@"敏感信息",@"欺诈",@"违法"];
}
- (void)setNaviBar{
//    self.mainTitle.text = @"投诉";
//    [self.mainTitle setTextColor:grayKColor];
//    self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
//    [self.backBtn setTitle:@"取消" forState:UIControlStateNormal];
//    self.saveBtn.hidden = NO;
//    [self.saveBtn setTitle:@"下一步" forState:UIControlStateNormal];
//    [self.saveBtn setTitleColor:moneyColor forState:UIControlStateNormal];
}

-(void)saveAction{
    
    if(!_tickImageView){
//        [LCProgressHUD showMessage:@"请选择投诉原因"];
        return ;
    }
    
//    ComplaintsMsgViewController *compVc =[[ComplaintsMsgViewController alloc]init];
//    compVc.type = self.type;
//    compVc.subType = self.dataSource[self.index];
//    compVc.targetId =self.targetId;
//    compVc.userTitle = self.userTitle;
//    [self.navigationController pushViewController:compVc animated:YES];
}

- (void)createUI
{
    [self.view addSubview:self.tableView];
//    UIView *headerView             = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 44)];
//    UILabel *lable                 = [[UILabel alloc]initWithFrame:CGRectMake(10, 10, SCREEN_WIDTH-20, 24)];
//    lable.text                     = @"请选择投诉原因";
//    lable.font                     = [UIFont systemFontOfSize:14];
//    lable.textColor                = zideColor;
//    [headerView addSubview:lable];
//    self.tableView.tableHeaderView = headerView;

}

#pragma mark - cell个数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataSource.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TRZXComplaintCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TRZXComplaintCell"];
    if (!cell) {
        cell =[[[NSBundle mainBundle] loadNibNamed:@"TRZXComplaintCell" owner:self options:nil]lastObject];
        
    }
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.label1.font = [UIFont systemFontOfSize:15];
    cell.label1.text = self.dataSource[indexPath.row];
//    cell.backgroundColor = backColor;
    cell.yzImage.hidden = YES;
    return cell;

}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //行被选中后，自动变回反选状态的方法
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    TRZXComplaintCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    self.index = indexPath.row;
    [cell addSubview:self.tickImageView];
    
}

#pragma mark - setter/getter
- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.backgroundColor = [UIColor groupTableViewBackgroundColor];
        _tableView.delegate =self;
        _tableView.dataSource = self;
        _tableView.rowHeight = 45;
//        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
    return _tableView;
}

-(UIImageView *)tickImageView{
    if (!_tickImageView) {
//        _tickImageView = [UIImageView kipo_imageViewWithImageName:@"RCDComplaints_Selected"];
//        _tickImageView.frame = CGRectMake(SCREEN_WIDTH - 30, 15, 15, 15);
    }
    return _tickImageView;
}

@end
