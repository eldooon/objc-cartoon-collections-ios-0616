//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs;{
    
    NSMutableString *newDwarfs = [NSMutableString string]; //create mutable string
    
    for (NSUInteger i = 0; i < [dwarfs count]; i++){
       
        NSUInteger number = i + 1; //allow number to start at 1
        
        if (dwarfs[i] == [dwarfs lastObject]){ //if it's the last element in the array
            [newDwarfs appendFormat: @"%lu. %@", number, dwarfs[i]];
        }
        
        else {
            [newDwarfs appendFormat: @"%lu. %@ | ", number, dwarfs[i]];
        }
    }
    
    return newDwarfs;
}

-(NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers{
    
    NSMutableArray *shoutPowers = [powers mutableCopy]; //create mutable copy of powers array
    
    for (NSUInteger i = 0; i < [shoutPowers count]; i ++){
        
        shoutPowers[i] = [shoutPowers[i] uppercaseString]; //make elements uppercase
        shoutPowers[i] = [shoutPowers[i] stringByAppendingString: @"!"]; //append ! to elements in array
        
    }
    
    return shoutPowers;
}

-(NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers{
    
    NSMutableString *beginPhrase = [@"Let our powers combine:\n" mutableCopy]; //create mutable copy of phrase
    NSMutableArray *shoutPowers = [[self arrayOfPlaneteerShoutsFromArray: powers] mutableCopy]; //create mutable copy of previous method
    
    for (NSUInteger i = 0; i < [shoutPowers count]; i ++){
        
        [beginPhrase appendFormat:@"%@\n", shoutPowers[i]]; //append phrase with shoutpowers
        
    }
    
    NSMutableString *goPlanet = [@"Go Planet!" mutableCopy];
    [beginPhrase appendString:goPlanet]; //append all phrases together
    
    return beginPhrase;
}

-(NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames{
    
    for (NSUInteger i = 0; i < [premiumCheeseNames count]; i++){
        
        NSString *sameCheese = premiumCheeseNames[i]; //initate string return value to premium chese index
        
        if ([cheesesInStock containsObject: premiumCheeseNames[i]]){ //if cheeseinstock contains cheese name wanted
            
            return sameCheese; //return cheese name if it's in stock
        }
    }

    return @"No premium cheeses in stock."; //return this phrase if above requirement is not met
}

-(NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags{
    
    NSMutableArray *newMoneyBags = [[NSMutableArray alloc]init]; //create empty array
    for (NSUInteger i = 0; i < [moneyBags count]; i++){
        
        NSString *dollar = @"$"; //create $ symbol
        [dollar stringByAppendingString: moneyBags[i]]; //append dollar symbol to money bags
        [newMoneyBags addObject: dollar]; //add money bag with dollar sign into new array
    }
    return newMoneyBags;
}

@end
