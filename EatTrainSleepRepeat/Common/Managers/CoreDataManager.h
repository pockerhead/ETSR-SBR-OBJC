//
//  CoreDataManager.h
//  EatTrainSleepRepeat
//
//  Created by Артём Балашов on 26/02/2019.
//  Copyright © 2019 pockerhead. All rights reserved.
//

#ifndef CoreDataManager_h
#define CoreDataManager_h

@interface CoreDataManager: NSObject

@property (readonly, strong) NSPersistentContainer *persistentContainer;

-(void)saveContext;
+(CoreDataManager*)shared;
@end

#endif /* CoreDataManager_h */
