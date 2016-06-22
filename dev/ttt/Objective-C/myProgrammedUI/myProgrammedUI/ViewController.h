//
//  ViewController.h
//  myProgrammedUI
//
//  Created by Erica Correa on 6/11/16.
//  Copyright © 2016 Turn to Tech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, retain) UITextField * userNameTextField;
@property (nonatomic, retain) UIButton * enterButton;
@property (nonatomic, retain) UIScrollView * imageCaptionScrollView;
@property (nonatomic, retain) UILabel * scrollViewLabel;
@property (nonatomic, retain) UIImageView * babyImageView;
@property (nonatomic, retain) UIImageView * immovableBox;


//methods to create properties
- (void)createUserNameTextField;
- (void)createEnterButton;
- (void)createImageCaptionScrollView;
- (void)createBabyImageView;
- (void)createImmovableBox;

//method for button
- (IBAction)enterName:(id)sender;

@end

