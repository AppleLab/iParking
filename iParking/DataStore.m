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
    [array addObject:annotationK3];
    
    Annotation *annotationA4 = [Annotation new];
    annotationA4.title = @"ТД «Муравейник»";
    annotationA4.subtitle = @"ул.Тукая, 2";
    annotationA4.coordinate = CLLocationCoordinate2DMake(55.78502893173571,  49.10768508911133);
    [array addObject:annotationA4];
    
    Annotation *annotationK4 = [Annotation new];
    annotationK4.title = @"Бизнес центр";
    annotationK4.subtitle = @"Ул.Проточная, 8";
    annotationK4.coordinate = CLLocationCoordinate2DMake(55.81337587801879, 49.08612012863159);
    [array addObject:annotationK4];
    
    Annotation *annotationA5 = [Annotation new];
    annotationA5.title = @"ТЦ «Модная семья»";
    annotationA5.subtitle = @"ул.Б.Шахиди, 17";
    annotationA5.coordinate = CLLocationCoordinate2DMake(55.78679047500998 , 49.106547832489014);
    [array addObject:annotationA5];
    
    //нужно проверить адрес
    Annotation *annotationK5 = [Annotation new];
    annotationK5.title = @"Бизнес центр «Союз»";
    annotationK5.subtitle = @"Ул.Васильченко, 1";
    annotationK5.coordinate = CLLocationCoordinate2DMake(55.83861851453064, 49.04439568519592);
    [array addObject:annotationK5];
    
    Annotation *annotationA6 = [Annotation new];
    annotationA6.title = @"гипермаркет «ГУМ»";
    annotationA6.subtitle = @"ул.Баумана, 51";
    annotationA6.coordinate = CLLocationCoordinate2DMake(55.787755670422854 , 49.12135362625122);
    [array addObject:annotationA6];
    
    Annotation *annotationK6 = [Annotation new];
    annotationK6.title = @"Бизнес центр»";
    annotationK6.subtitle = @"Пр.Ибрагимова, 58";
    annotationK6.coordinate = CLLocationCoordinate2DMake(55.820100009246715, 49.09582167863846);
    [array addObject:annotationK6];
    
    Annotation *annotationA7 = [Annotation new];
    annotationA7.title = @"ТД «Казанский ЦУМ»";
    annotationA7.subtitle = @"ул.Московская, 2";
    annotationA7.coordinate = CLLocationCoordinate2DMake(55.79268081087669 , 49.10184860229492);
    [array addObject:annotationA7];
    
    Annotation *annotationK7 = [Annotation new];
    annotationK7.title = @"ТК «Мега Мебель»»";
    annotationK7.subtitle = @"Ул.Сибирский тракт, 34";
    annotationK7.coordinate = CLLocationCoordinate2DMake(55.81788488144342, 49.18278694152832);
    [array addObject:annotationK7];
    
    Annotation *annotationA8 = [Annotation new];
    annotationA8.title = @"ТРК «Пирамида»";
    annotationA8.subtitle = @"ул.Московская, 3";
    annotationA8.coordinate = CLLocationCoordinate2DMake(55.794791825535846 , 49.10321116447449);
    [array addObject:annotationA8];
    
    Annotation *annotationA9 = [Annotation new];
    annotationA9.title = @"Центральный стадион";
    annotationA9.subtitle = @"ул.Ташаяк, 2а";
    annotationA9.coordinate = CLLocationCoordinate2DMake(55.796757981984776, 49.096269607543945);
    [array addObject:annotationA9];
    
    Annotation *annotationA10 = [Annotation new];
    annotationA10.title = @"Гранд «Отель Казань»";
    annotationA10.subtitle = @"ул.Петербургская, 1";
    annotationA10.coordinate = CLLocationCoordinate2DMake(55.78646169986234, 49.1243040561676);
    [array addObject:annotationA10];
    
    Annotation *annotationA11 = [Annotation new];
    annotationA11.title = @"ТЦ «Бэхетле»";
    annotationA11.subtitle = @"ул.Павлюхина, 57";
    annotationA11.coordinate = CLLocationCoordinate2DMake(55.77447006827832, 49.13863241672516);
    [array addObject:annotationA11];
    
    
    Annotation *annotationA12 = [Annotation new];
    annotationA12.title = @"«Центральный рынок г.Казани»";
    annotationA12.subtitle = @"Ул.М.Межлаука, 13";
    annotationA12.coordinate = CLLocationCoordinate2DMake(55.78644661836699, 49.10843074321747);
    [array addObject:annotationA12];
    
    Annotation *annotationA13 = [Annotation new];
    annotationA13.title = @"Гостиница «Татарстан»";
    annotationA13.subtitle = @"Ул.Пушкина, 4";
    annotationA13.coordinate = CLLocationCoordinate2DMake(55.78650091172291, 49.122474789619446);
    [array addObject:annotationA13];
    
    Annotation *annotationA14 = [Annotation new];
    annotationA14.title = @"Чеховский рынок";
    annotationA14.subtitle = @"Ул.Чехова. 2";
    annotationA14.coordinate = CLLocationCoordinate2DMake(55.789580427655686, 49.147692918777466);
    [array addObject:annotationA14];
    
    Annotation *annotationA15 = [Annotation new];
    annotationA15.title = @"«Сити-центр»";
    annotationA15.subtitle = @"Ул.Парина, 3";
    annotationA15.coordinate = CLLocationCoordinate2DMake(55.74469677773677, 49.19453501701355);
    [array addObject:annotationA15];
    
    Annotation *annotationA16 = [Annotation new];
    annotationA16.title = @"ТД «Олимп»";
    annotationA16.subtitle = @"Ул.Р.Зорге, 70";
    annotationA16.coordinate = CLLocationCoordinate2DMake(55.74673188876475, 49.212881326675415);
    [array addObject:annotationA16];
    
    Annotation *annotationA17 = [Annotation new];
    annotationA17.title = @"«Евроинтерьер»";
    annotationA17.subtitle = @"Ул.Р.Зорге, 82";
    annotationA17.coordinate = CLLocationCoordinate2DMake(55.7454697700952, 49.21507000923157);
    [array addObject:annotationA17];
    
    Annotation *annotationA18 = [Annotation new];
    annotationA18.title = @"Центральный дом мебели";
    annotationA18.subtitle = @"Ул.Тукая, 115";
    annotationA18.coordinate = CLLocationCoordinate2DMake(55.76673011297474, 49.12569880485535);
    [array addObject:annotationA18];
    
    Annotation *annotationA19 = [Annotation new];
    annotationA19.title = @"ПТЦ «Ирбис»";
    annotationA19.subtitle = @"Ул.Фучика, 105а";
    annotationA19.coordinate = CLLocationCoordinate2DMake(55.755013152136456, 49.22999382019043);
    [array addObject:annotationA19];
    
    //проверить
    Annotation *annotationA20 = [Annotation new];
    annotationA20.title = @"ТК «Проспект»";
    annotationA20.subtitle = @"Пр.Победы";
    annotationA20.coordinate = CLLocationCoordinate2DMake(55.772505804094344 , 49.21898066997528);
    [array addObject:annotationA20];
    
    Annotation *annotationA21 = [Annotation new];
    annotationA21.title = @"ЗАО ТК «Эдельвейс»";
    annotationA21.subtitle = @"Ул.Оренбургский тракт, 144";
    annotationA21.coordinate = CLLocationCoordinate2DMake(55.72952068254925, 49.19747471809387);
    [array addObject:annotationA21];
    
    Annotation *annotationA22 = [Annotation new];
    annotationA22.title = @"ТК «Бэхетле»";
    annotationA22.subtitle = @"Оренбургский тракт, 22г";
    annotationA22.coordinate = CLLocationCoordinate2DMake(55.753443379431566, 49.16010618209839);
    [array addObject:annotationA22];
    
    Annotation *annotationA23 = [Annotation new];
    annotationA23.title = @"Супермаркет «Бэхетле»";
    annotationA23.subtitle = @"Ул.Зорге, 77";
    annotationA23.coordinate = CLLocationCoordinate2DMake(55.74762259387401, 49.21452283859253);
    [array addObject:annotationA23];
    
    Annotation *annotationA24 = [Annotation new];
    annotationA24.title = @"ТЦ «Мега» (Икея)";
    annotationA24.subtitle = @"пр.Победы, 141";
    annotationA24.coordinate = CLLocationCoordinate2DMake(55.78093544912811 , 49.21302080154419);
    [array addObject:annotationA24];
    
    Annotation *annotationA25 = [Annotation new];
    annotationA25.title = @"ТЦ «Мега» (Икея)";
    annotationA25.subtitle = @"пр.Победы, 141";
    annotationA25.coordinate = CLLocationCoordinate2DMake(55.78093544912811 , 49.21302080154419);
    [array addObject:annotationA25];
    
    //посмотреть адрес
    Annotation *annotationA26 = [Annotation new];
    annotationA26.title = @"«Метро Кеш энд Керри»";
    annotationA26.subtitle = @"ул.Вахитова";
    annotationA26.coordinate = CLLocationCoordinate2DMake(55.76310855356419,  49.11718010902405);
    [array addObject:annotationA26];

    Annotation *annotationA27 = [Annotation new];
    annotationA27.title = @"Магазин «Бэхетле» ";
    annotationA27.subtitle = @"ул. Залесная, 66";
    annotationA27.coordinate = CLLocationCoordinate2DMake(55.850496296363794 , 48.89539897441864);
    [array addObject:annotationA27];

    Annotation *annotationA28 = [Annotation new];
    annotationA28.title = @"Магазин «Эдельвейс»";
    annotationA28.subtitle = @"Ул.Адоратского, 12";
    annotationA28.coordinate = CLLocationCoordinate2DMake(55.83189080509834, 49.148465394973755);
    [array addObject:annotationA28];
    
    //адрес
    Annotation *annotationA29 = [Annotation new];
    annotationA29.title = @"ТЦ «Бэхетле»";
    annotationA29.subtitle = @"Пр.Амирхана";
    annotationA29.coordinate = CLLocationCoordinate2DMake(55.83008610787904, 49.13359522819519);
    [array addObject:annotationA29];

    Annotation *annotationA30 = [Annotation new];
    annotationA30.title = @"ТК «Парк Хаус»";
    annotationA30.subtitle = @"пр-т. Ямашева, 46/33";
    annotationA30.coordinate = CLLocationCoordinate2DMake(55.829570895143824, 49.11783456802368);
    [array addObject:annotationA30];
    
    
    Annotation *annotationA31 = [Annotation new];
    annotationA31.title = @"ТК «Тандем»";
    annotationA31.subtitle = @"просп. Ибрагимова, 56";
    annotationA31.coordinate = CLLocationCoordinate2DMake(55.82133259038037, 49.09342646598816);
    [array addObject:annotationA31];
    
    Annotation *annotationA32 = [Annotation new];
    annotationA32.title = @"ТК «Южный», Мегастрой";
    annotationA32.subtitle = @"проспект Победы, 109";
    annotationA32.coordinate = CLLocationCoordinate2DMake(55.772415282621516, 49.21720504760742);
    [array addObject:annotationA32];
    
    Annotation *annotationA33 = [Annotation new];
    annotationA33.title = @"Мегастрой, Агава";
    annotationA33.subtitle = @"ул Азинская 2-я, 7";
    annotationA33.coordinate = CLLocationCoordinate2DMake(55.800876938848695, 49.20900821685791);
    [array addObject:annotationA33];
    
    Annotation *annotationA34 = [Annotation new];
    annotationA34.title = @"ТЦ «Азино»";
    annotationA34.subtitle = @"Ул.Минская, 9";
    annotationA34.coordinate = CLLocationCoordinate2DMake(55.773459284172084, 49.23031568527222 );
    [array addObject:annotationA34];
    
    
    
//кал
}
@end
