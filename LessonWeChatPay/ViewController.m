//
//  ViewController.m
//  LessonWeChatPay
//
//  Created by 韩俊强 on 16/4/13.
//  Copyright © 2016年 韩俊强. All rights reserved.
//

#import "ViewController.h"
#import "WXApi.h"

@interface ViewController ()

@end

@implementation ViewController


- (IBAction)weChatPayButtonAction:(id)sender
{
    PayReq *request = [[PayReq alloc] init];
    /** 商家向财付通申请的商家id */
    request.partnerId = @"1220277201";
    /** 预支付订单 */
    request.prepayId= @"82010380001603250865be9c4c063c30";
    /** 商家根据财付通文档填写的数据和签名 */
    request.package = @"Sign=WXPay";
    /** 随机串，防重发 */
    request.nonceStr= @"lUu5qloVJV7rrJlr";
    /** 时间戳，防重发 */
    request.timeStamp= 1458893985;
    /** 商家根据微信开放平台文档对数据做的签名 */
    request.sign= @"b640c1a4565b476db096f4d34b8a9e71960b0123";
    /*! @brief 发送请求到微信，等待微信返回onResp
     *
     * 函数调用后，会切换到微信的界面。第三方应用程序等待微信返回onResp。微信在异步处理完成后一定会调用onResp。支持以下类型
     * SendAuthReq、SendMessageToWXReq、PayReq等。
     * @param req 具体的发送请求，在调用函数后，请自己释放。
     * @return 成功返回YES，失败返回NO。
     */
    [WXApi sendReq: request];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
