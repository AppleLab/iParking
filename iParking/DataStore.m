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
    
    Annotation *annotationK5 = [Annotation new];
    annotationK5.title = @"Бизнес центр «Союз»";
    annotationK5.subtitle = @"Ул.Васильченко, 1";
    annotationK5.coordinate = CLLocationCoordinate2DMake(55.835811, 49.058516);
    [array addObject:annotationK5];
    
    Annotation *annotationA6 = [Annotation new];
    annotationA6.title = @"гипермаркет «ГУМ»»";
    annotationA6.subtitle = @"ул.Баумана, 51";
    annotationA6.coordinate = CLLocationCoordinate2DMake(55.787755670422854 , 49.12135362625122);
    [array addObject:annotationA6];
    
    Annotation *annotationK6 = [Annotation new];
    annotationK6.title = @"Бизнес центр»";
    annotationK6.subtitle = @"Пр.Ибрагимова, 58";
    annotationK6.coordinate = CLLocationCoordinate2DMake(55.820100009246715, 49.09582167863846);
    [array addObject:annotationK6];
    
    Annotation *annotationK7 = [Annotation new];
    annotationK7.title = @"ТК «Мега Мебель»»";
    annotationK7.subtitle = @"Ул.Сибирский тракт, 34";
    annotationK7.coordinate = CLLocationCoordinate2DMake(55.81788488144342, 49.18278694152832);
    [array addObject:annotationK7];
    
    Annotation *annotationK8 = [Annotation new];
    annotationK8.title = @"РК «Ривьера»";
    annotationK8.subtitle = @"Пр.Амирхана, 1а";
    annotationK8.coordinate = CLLocationCoordinate2DMake(55.815377264876545, 49.130001068115234);
    [array addObject:annotationK8];
    
    Annotation *annotationK9 = [Annotation new];
    annotationK9.title = @"РК «Ривьера»";
    annotationK9.subtitle = @"Пр.Амирхана, 1б";
    annotationK9.coordinate = CLLocationCoordinate2DMake(55.81573895031542, 49.127211570739746);
    [array addObject:annotationK9];
    
    Annotation *annotationK10 = [Annotation new];
    annotationK10.title = @"ТК «Новинка»";
    annotationK10.subtitle = @"Ул.Короленко, 28";
    annotationK10.coordinate = CLLocationCoordinate2DMake(55.829926422790344, 49.10264253616333);
    [array addObject:annotationK10];
    
    Annotation *annotationK11 = [Annotation new];
    annotationK11.title = @"Ново-Савиновский рынок";
    annotationK11.subtitle = @"Ул.Адоратского, 21";
    annotationK11.coordinate = CLLocationCoordinate2DMake(55.83013130165304, 49.14540767669678);
    [array addObject:annotationK11];
    
    Annotation *annotationK12 = [Annotation new];
    annotationK12.title = @"Оптовый рынок «Привоз»";
    annotationK12.subtitle = @"Ул.Адоратского, 65";
    annotationK12.coordinate = CLLocationCoordinate2DMake(55.843831632321645, 49.144935607910156);
    [array addObject:annotationK12];
    
    Annotation *annotationK13 = [Annotation new];
    annotationK13.title = @"Розничный рынок «Стан»";
    annotationK13.subtitle = @"Пр.Амирхана, 48";
    annotationK13.coordinate = CLLocationCoordinate2DMake(55.83133531977923, 49.133590534329414);
    [array addObject:annotationK13];
    
    Annotation *annotationK14 = [Annotation new];
    annotationK14.title = @"Розничный рынок «Караваево»";
    annotationK14.subtitle = @"Ул.Дементьева, 72";
    annotationK14.coordinate = CLLocationCoordinate2DMake(55.86188050048004, 49.10846829414368);
    [array addObject:annotationK14];
    
    Annotation *annotationK15 = [Annotation new];
    annotationK15.title = @"ТРК «Парк Хаус»";
    annotationK15.subtitle = @"пр.Ямашева, 46";
    annotationK15.coordinate = CLLocationCoordinate2DMake(55.829468454371394, 49.11807060241699);
    [array addObject:annotationK15];
    
    Annotation *annotationK16 = [Annotation new];
    annotationK16.title = @"ТК «Бэхетле»";
    annotationK16.subtitle = @"пр.Ямашева, 71а";
    annotationK16.coordinate = CLLocationCoordinate2DMake(55.82622636583872, 49.13536548614502);
    [array addObject:annotationK16];
    
    Annotation *annotationK17 = [Annotation new];
    annotationK17.title = @"Центральный стадион";
    annotationK17.subtitle = @"Ул.Ташаяк, 2а";
    annotationK17.coordinate = CLLocationCoordinate2DMake(55.796866539878586, 49.0989089012146);
    [array addObject:annotationK17];
    
    Annotation *annotationK18 = [Annotation new];
    annotationK18.title = @"Чеховский рынок";
    annotationK18.subtitle = @"Ул.Ташаяк, 2а";
    annotationK18.coordinate = CLLocationCoordinate2DMake(55.789574395541194, 49.14776802062988);
    [array addObject:annotationK18];
    
    Annotation *annotationK19 = [Annotation new];
    annotationK19.title = @"Двор дома №56 по ул.Баумана, въезд с ул.Островского";
    annotationK19.subtitle = @"Ул.Баумана, 56";
    annotationK19.coordinate = CLLocationCoordinate2DMake(55.790491266225246, 49.11492705345154);
    [array addObject:annotationK19];
    
    Annotation *annotationK20 = [Annotation new];
    annotationK20.title = @"Проезжая часть ул.Тихомирного";
    annotationK20.subtitle = @"ул.Тихомирного от ул.Эсперанто до ул.Калинина";
    annotationK20.coordinate = CLLocationCoordinate2DMake(55.778310808824294, 49.143197536468506);
    [array addObject:annotationK20];

    Annotation *annotationK21 = [Annotation new];
    annotationK21.title = @"Территория Речного порта";
    annotationK21.subtitle = @"Ул.Девятаева, 1";
    annotationK21.coordinate = CLLocationCoordinate2DMake(55.773326522521, 49.091506004333496);
    [array addObject:annotationK21];
    
    Annotation *annotationK22 = [Annotation new];
    annotationK22.title = @"Территория перед заводом «Серп и Молот»";
    annotationK22.subtitle = @"ул.Кл.Цеткин, 8";
    annotationK22.coordinate = CLLocationCoordinate2DMake(55.799871, 49.06422);
    [array addObject:annotationK22];
    
    Annotation *annotationK23 = [Annotation new];
    annotationK23.title = @"ЗАГС Кировского района по ул.Фрунзе";
    annotationK23.subtitle = @"ул.Болотникова, 35 а ";
    annotationK23.coordinate = CLLocationCoordinate2DMake(55.824153215923374, 49.04194951057434);
    [array addObject:annotationK23];
    
    Annotation *annotationK24 = [Annotation new];
    annotationK24.title = @"территория перед зданием старого аэропорта";
    annotationK24.subtitle = @"ул.Космонавтов";
    annotationK24.coordinate = CLLocationCoordinate2DMake(55.793742363978865, 49.181907176971436);
    [array addObject:annotationK24];
    
    Annotation *annotationK25 = [Annotation new];
    annotationK25.title = @"прилегающая территория стадиона «Мирас»";
    annotationK25.subtitle = @"ул.Ак.Глушко, Дж.Файзи  ";
    annotationK25.coordinate = CLLocationCoordinate2DMake(55.7910522356732, 49.228620529174805);
    [array addObject:annotationK25];
    
    Annotation *annotationK26 = [Annotation new];
    annotationK26.title = @"прилегающая территория СК «Центр бокса»";
    annotationK26.subtitle = @"ул.Ак.Глушко, Дж.Файзи  ";
    annotationK26.coordinate = CLLocationCoordinate2DMake(55.79047317030209, 49.228148460388184);
    [array addObject:annotationK26];
    
    Annotation *annotationK27 = [Annotation new];
    annotationK27.title = @"прилегающая территория СК «Ак Буре»";
    annotationK27.subtitle = @"улица Рашида Вагапова, 17";
    annotationK27.coordinate = CLLocationCoordinate2DMake(55.78403048742547, 49.23145294189453);
    [array addObject:annotationK27];
    
    Annotation *annotationK28 = [Annotation new];
    annotationK28.title = @"Прилегающая территория к конно-спортивному комплексу «Казань»";
    annotationK28.subtitle = @"ул. П. Лумумбы, д. 47а";
    annotationK28.coordinate = CLLocationCoordinate2DMake(55.79322365414599, 49.187378883361816);
    [array addObject:annotationK28];
    
    
    
//кал
}
@end
