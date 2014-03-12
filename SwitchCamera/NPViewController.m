//
//  NPViewController.m
//  SwitchCamera
//
//  Created by cssweb on 14-3-6.
//  Copyright (c) 2014年 北京中软万维上海分公司. All rights reserved.
//

#import "NPViewController.h"

@interface NPViewController () <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@end

@implementation NPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)click:(id)sender;
{
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        
            UIImagePickerController *albums = [[UIImagePickerController alloc] init];
            albums.sourceType = UIImagePickerControllerSourceTypeCamera;
            albums.cameraDevice = UIImagePickerControllerCameraDeviceFront;
            albums.delegate = self;
        
            UIImageView *imageview =  [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
        
            [self presentViewController:albums animated:YES completion:^{
                [albums.view addSubview:imageview];
                imageview.backgroundColor = [UIColor redColor];

            }];
    }else{
       
    }
}
@end
