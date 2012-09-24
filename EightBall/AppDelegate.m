#import "AppDelegate.h"

@interface AppDelegate () <UIApplicationDelegate,UITableViewDataSource>

@end

@implementation AppDelegate

-(NSString *)answerText {
    if (!self.answersArray) {
        self.answersArray = [@[@"It is certain.",
                             @"It is decidedly so.",
                             @"Without a doubt.",
                             @"Yes – definitely.",
                             @"You may rely on it.",
                             @"As I see it, yes.",
                             @"Most likely.",
                             @"Outlook good.",
                             @"Yes.",
                             @"Signs point to yes.",
                             @"Reply hazy, try again.",
                             @"Ask again later.",
                             @"Better not tell you now.",
                             @"Cannot predict now.",
                             @"Concentrate and ask again.",
                             @"Don't count on it.",
                             @"My reply is no.",
                             @"My sources say no.",
                             @"Outlook not so good.",
                             @"Very doubtful"] mutableCopy];
        NSSortDescriptor *sortOrder =
        [NSSortDescriptor sortDescriptorWithKey: @"self" ascending: YES];
        [self.answersArray sortUsingDescriptors: @[sortOrder]];
    }
    return self.answersArray[arc4random()%[self.answersArray count]];
}

#pragma mark - Table view data source
-(NSInteger)tableView:(UITableView *)tableView
numberOfRowsInSection:(NSInteger)section {
    return [self.answersArray count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView
        cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell =
      [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    cell.textLabel.text = self.answersArray[indexPath.row];
    return cell;
}

-(void)  tableView:(UITableView *)tableView
commitEditingStyle:(UITableViewCellEditingStyle)editingStyle
 forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.answersArray removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath]
                         withRowAnimation:UITableViewRowAnimationFade];
    }
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the
        // array and add a new row to the table view
    }
}

#pragma mark - Application Delegate
-(BOOL)application:(UIApplication *)application
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    return YES;
}
							
-(void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state.
    // This can occur for certain types of temporary interruptions (such as an
    // incoming phone call or SMS message) or when the user quits the
    // application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down
    // OpenGL ES frame rates. Games should use this method to pause the game.
}

-(void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate
    // timers, and store enough application state information to restore your
    // application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called
    // instead of applicationWillTerminate: when the user quits.
}

-(void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive
    // state; here you can undo many of the changes made on entering the
    // background.
}

-(void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the
    // application was inactive. If the application was previously in the
    // background, optionally refresh the user interface.
}

-(void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if
    // appropriate. See also applicationDidEnterBackground:.
}

@end
