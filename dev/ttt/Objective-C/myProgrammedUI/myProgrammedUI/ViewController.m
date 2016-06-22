//
//  ViewController.m
//  myProgrammedUI
//
//  Created by Erica Correa on 6/11/16.
//  Copyright © 2016 Turn to Tech. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithRed:0.80 green:0.93 blue:0.90 alpha:1.0];
    
    [self createUserNameTextField];
    [self createEnterButton];
    [self createImageCaptionScrollView];
    [self createBabyImageView];
    [self createImmovableBox];
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
}

- (void)createUserNameTextField {
    
    self.userNameTextField = [[UITextField alloc]initWithFrame:CGRectMake(50, 50, 300, 30)];
    self.userNameTextField.backgroundColor = [UIColor whiteColor];
    self.userNameTextField.placeholder = @"Key in your name";
    [self.view addSubview:self.userNameTextField];
}

- (void)createEnterButton {
    
    self.enterButton = [[UIButton alloc]initWithFrame:CGRectMake(50, 115, 100, 30)];
    self.enterButton.backgroundColor = [UIColor colorWithRed:0.76 green:0.48 blue:0.63 alpha:1.0];
    [self.enterButton setTitle:@"Enter" forState:UIControlStateNormal];
    [self.enterButton addTarget:self action:@selector(enterName:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.enterButton];
}

- (void)createImageCaptionScrollView {
    
    self.imageCaptionScrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(50, 175, 400, 80)];
    self.imageCaptionScrollView.backgroundColor = [UIColor clearColor];
    
    self.scrollViewLabel = [[UILabel alloc]initWithFrame:CGRectMake(5, 5, 215, 80)];
    self.scrollViewLabel.lineBreakMode = NSLineBreakByWordWrapping;
    self.scrollViewLabel.numberOfLines = 2;
    self.scrollViewLabel.textColor = [UIColor colorWithRed:0.29 green:0.36 blue:0.26 alpha:1.0];
    
    [self.imageCaptionScrollView setContentSize:self.scrollViewLabel.frame.size];
    [self.imageCaptionScrollView addSubview:self.scrollViewLabel];
    [self.view addSubview:self.imageCaptionScrollView];
}

- (void)createBabyImageView {
    
    self.babyImageView = [[UIImageView alloc]initWithFrame:CGRectMake(50, 280, 250, 300)];
    self.babyImageView.image = [UIImage imageNamed:@"P11.jpg"];
    self.babyImageView.hidden = YES;
    [self.view addSubview:self.babyImageView];
}

- (void)createImmovableBox {
    
    self.immovableBox = [[UIImageView alloc]initWithFrame:CGRectMake(300, 600, 50, 50)];
    
    self.immovableBox.backgroundColor = [UIColor colorWithRed:1.00 green:0.00 blue:1.00 alpha:1.0];

    [self.view addSubview:self.immovableBox];
    
    self.immovableBox.translatesAutoresizingMaskIntoConstraints = NO;
    
    NSLayoutConstraint * c_1 = [NSLayoutConstraint constraintWithItem:self.view
                                                            attribute: NSLayoutAttributeRight
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.immovableBox
                                                            attribute:NSLayoutAttributeRight
                                                           multiplier:1.0
                                                             constant:0.0];
    
    NSLayoutConstraint * c_2 = [NSLayoutConstraint constraintWithItem:self.view
                                                            attribute:NSLayoutAttributeBottom
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.immovableBox
                                                            attribute:NSLayoutAttributeBottom
                                                           multiplier:1.0
                                                             constant:0.0];
    
    NSLayoutConstraint * c_3 = [NSLayoutConstraint constraintWithItem:self.immovableBox
                                                                attribute:NSLayoutAttributeWidth
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:nil
                                                                attribute:0
                                                               multiplier:1.0
                                                                 constant:50];
    NSLayoutConstraint * c_4 = [NSLayoutConstraint constraintWithItem:self.immovableBox
                                                                attribute:NSLayoutAttributeHeight
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:nil
                                                                attribute:0
                                                               multiplier:1.0
                                                                 constant:50];
    
    [self.view addConstraints:@[c_1, c_2]];
    [self.immovableBox addConstraints:@[c_3, c_4]];
}

- (IBAction)enterName:(id)sender {
    
    NSString * userName = [[NSString alloc]init];
    userName = self.userNameTextField.text;
    
    NSString * labelString = [NSString stringWithFormat:@"Hey, %@, look how cute my baby is!", userName];
    
    self.scrollViewLabel.text = labelString;
    self.babyImageView.hidden = NO;
}

@end
