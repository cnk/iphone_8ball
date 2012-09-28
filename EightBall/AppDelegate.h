@interface AppDelegate : UIResponder

@property(strong,nonatomic)UIWindow *window;
@property(strong,nonatomic,readonly)NSString *answerText;
@property(nonatomic,readonly)NSUInteger answerCount;
-(NSString *)answerAtIndex:(NSUInteger)index;
-(void)deleteAnswerAtIndex:(NSUInteger)index;
@end
