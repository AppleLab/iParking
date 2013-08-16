//
//  DataStore.m
//  iParking
//
//  Created by user on 16.08.13.
//  Copyright (c) 2013 Ramil Garaev. All rights reserved.
//

#import "DataStore.h"

@implementation DataStore

static NSMutableArray *array;
static bool check=TRUE;


//rewrite
+(BOOL) AddAnnotation:(Annotation*)annotation{
    //добваление тольво вот куда? если у нас нет не базы данных и тому подобное
    if (check) {
        [DataStore Start];
    }
    return false;
}
//complite
+(Annotation*) GetAnnotation:(int)count{
    if (check) {
        [DataStore Start];
        return [array objectAtIndex: count];
    }
    return NULL;
}
//complite
+(NSMutableArray*) GetArrayAnnotation{
    if (check) {
        [DataStore Start];
        return array;
    }
    return nil;
}
//complite but 50%
+(void) Start{
    check=FALSE;
    array = [[NSMutableArray alloc]init];
 
   //кал
    Annotation *annotation1 = [Annotation new];
    annotation1.title = @"ТЦ «Сувар Плаза»";
    annotation1.subtitle = @"ул.Спартаковская, 6";
    annotation1.coordinate = CLLocationCoordinate2DMake(55.779215877174096, 49.129743576049805);
    [array addObject:annotation1];
    
    Annotation *annotation2= [Annotation new];
    annotation2.title = @"Гипермаркет «КЦ «Кей Казань»";
    annotation2.subtitle = @"Пр.Ибрагимова, 83";
    annotation2.coordinate = CLLocationCoordinate2DMake(55.82198352211786, 49.09895181655884);
    [array addObject:annotation2];
    
    Annotation *annotation3 = [Annotation new];
    annotation3.title = @"Гипермаркет «Кольцо» ";
    annotation3.subtitle = @"ул.Петербургская, 1";
    annotation3.coordinate = CLLocationCoordinate2DMake(55.786455667264896, 49.12436842918396);
    [array addObject:annotation3];
    
    Annotation *annotation4 = [Annotation new];
    annotation4.title = @"Спортивный комплекс «Ватан»";
    annotation4.subtitle = @"Ул.Бондаренко, 2";
    annotation4.coordinate = CLLocationCoordinate2DMake(55.83370219701798, 49.10495661199093);
    [array addObject:annotation4];
    
    Annotation *annotationA3 = [Annotation new];
    annotationA3.title = @"ТРК «Корстон-Казань»";
    annotationA3.subtitle = @"ул.Н.Ершова, 1а";
    annotationA3.coordinate = CLLocationCoordinate2DMake(55.793808710087056, 49.14950609207153);
    [array addObject:annotationA3];
    
    Annotation *annotationK3 = [Annotation new];
    annotationK3.title = @"ТК «ДОМО»";
    annotationK3.subtitle = @"Ул.Декабристов, 113";
    annotationK3.coordinate = CLLocationCoordinate2DMake(55.821670111900005, 49.08721446990967);

    
    Annotation *annotationA4 = [Annotation new];
    annotationA4.title = @"ТД «Муравейник»";
    annotationA4.subtitle = @"ул.Тукая, 2";
    annotationA4.coordinate = CLLocationCoordinate2DMake(55.78502893173571,  49.10768508911133);

    
    Annotation *annotationK4 = [Annotation new];
    annotationK4.title = @"Бизнес центр";
    annotationK4.subtitle = @"Ул.Проточная, 8";
    annotationK4.coordinate = CLLocationCoordinate2DMake(55.81337587801879, 49.08612012863159);

    
    Annotation *annotationA5 = [Annotation new];
    annotationA5.title = @"ТЦ «Модная семья»";
    annotationA5.subtitle = @"ул.Б.Шахиди, 17";
    annotationA5.coordinate = CLLocationCoordinate2DMake(55.78679047500998 , 49.106547832489014);

    
    //нужно проверить адрес
    Annotation *annotationK5 = [Annotation new];
    annotationK5.title = @"Бизнес центр «Союз»";
    annotationK5.subtitle = @"Ул.Васильченко, 1";
    annotationK5.coordinate = CLLocationCoordinate2DMake(55.83861851453064, 49.04439568519592);

    
    Annotation *annotationA6 = [Annotation new];
    annotationA6.title = @"гипермаркет «ГУМ»»";
    annotationA6.subtitle = @"ул.Баумана, 51";
    annotationA6.coordinate = CLLocationCoordinate2DMake(55.787755670422854 , 49.12135362625122);

    
    Annotation *annotationK6 = [Annotation new];
    annotationK6.title = @"Бизнес центр»";
    annotationK6.subtitle = @"Пр.Ибрагимова, 58";
    annotationK6.coordinate = CLLocationCoordinate2DMake(55.820100009246715, 49.09582167863846);

    
    Annotation *annotationK7 = [Annotation new];
    annotationK7.title = @"ТК «Мега Мебель»»";
    annotationK7.subtitle = @"Ул.Сибирский тракт, 34";
    annotationK7.coordinate = CLLocationCoordinate2DMake(55.81788488144342, 49.18278694152832);
//кал
}
@end
