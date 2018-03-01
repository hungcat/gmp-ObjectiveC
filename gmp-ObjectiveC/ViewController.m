//
//  ViewController.m
//  gmp-ObjectiveC
//
//  Created by NTT on 2018/03/01.
//  Copyright © 2018年 NTT. All rights reserved.
//

#import "ViewController.h"
#import <libgmp/gmp.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"Hello World!");
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
    
    mpz_t a;
    mpz_init(a); // 初期化
    // 文字列の形で任意精度整数をセットする
    mpz_set_str(a, "48410242354393281104234213124421033", 10);
    //mpz_out_str(stdout, 10, a); // 出力用関数
    [label setText:@(mpz_get_str(NULL, 10, a))];
    // 後処理
    mpz_clear(a);
    
    [label setLineBreakMode:NSLineBreakByWordWrapping];
    [label setNumberOfLines:0];
    [label setFrame:CGRectMake(0, 0, self.view.frame.size.width, label.frame.size.height)];
    [label sizeToFit];
    [label setCenter:self.view.center];
    [self.view addSubview:label];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
