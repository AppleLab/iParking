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
 

    Annotation *annotation1 = [Annotation new];
    annotation1.title = @"ТЦ «Сувар Плаза»";
    annotation1.subtitle = @"ул.Спартаковская 6, кол-во мест: 498 (платная) ";
    annotation1.coordinate = CLLocationCoordinate2DMake(55.779215877174096, 49.129743576049805);
    [array addObject:annotation1];
    
    Annotation *annotation2= [Annotation new];
    annotation2.title = @"Гипермаркет «КЦ «Кей Казань»";
    annotation2.subtitle = @"Пр.Ибрагимова 83,кол-во мест: 20";
    annotation2.coordinate = CLLocationCoordinate2DMake(55.82198352211786, 49.09895181655884);
    [array addObject:annotation2];
    
    Annotation *annotation3 = [Annotation new];
    annotation3.title = @"Гипермаркет «Кольцо» ";
    annotation3.subtitle = @"ул.Петербургская 1, кол-во мест: 60";
    annotation3.coordinate = CLLocationCoordinate2DMake(55.786455667264896, 49.12436842918396);
    [array addObject:annotation3];
    
    Annotation *annotation4 = [Annotation new];
    annotation4.title = @"Спортивный комплекс «Ватан»";
    annotation4.subtitle = @"Ул.Бондаренко 2, кол-во мест: 100";
    annotation4.coordinate = CLLocationCoordinate2DMake(55.83370219701798, 49.10495661199093);
    [array addObject:annotation4];
    
    Annotation *annotationA3 = [Annotation new];
    annotationA3.title = @"ТРК «Корстон-Казань»";
    annotationA3.subtitle = @"ул.Н.Ершова 1а, кол-во мест: 120(платная)";
    annotationA3.coordinate = CLLocationCoordinate2DMake(55.793808710087056, 49.14950609207153);
    [array addObject:annotationA3];
    
    Annotation *annotationK3 = [Annotation new];
    annotationK3.title = @"ТК «ДОМО»";
    annotationK3.subtitle = @"Ул.Декабристов 113, кол-во мест: 22";
    annotationK3.coordinate = CLLocationCoordinate2DMake(55.821670111900005, 49.08721446990967);
    [array addObject:annotationK3];
    
    Annotation *annotationA4 = [Annotation new];
    annotationA4.title = @"ТД «Муравейник»";
    annotationA4.subtitle = @"ул.Тукая, 2";
    annotationA4.coordinate = CLLocationCoordinate2DMake(55.78502893173571,  49.10768508911133);
    [array addObject:annotationA4];
    
    Annotation *annotationK4 = [Annotation new];
    annotationK4.title = @"Бизнес центр";
    annotationK4.subtitle = @"Ул.Проточная 8, кол-во мест: 100";
    annotationK4.coordinate = CLLocationCoordinate2DMake(55.81337587801879, 49.08612012863159);
    [array addObject:annotationK4];
    
    Annotation *annotationA5 = [Annotation new];
    annotationA5.title = @"ТЦ «Модная семья»";
    annotationA5.subtitle = @"ул.Б.Шахиди 17, кол-во мест: 70";
    annotationA5.coordinate = CLLocationCoordinate2DMake(55.78679047500998 , 49.106547832489014);
    [array addObject:annotationA5];
    
    Annotation *annotationK5 = [Annotation new];
    annotationK5.title = @"Бизнес центр «Союз»";
    annotationK5.subtitle = @"Ул.Васильченко 1, кол-во мест: 100";
    annotationK5.coordinate = CLLocationCoordinate2DMake(55.835811, 49.058516);
    [array addObject:annotationK5];
    
    Annotation *annotationA6 = [Annotation new];
    annotationA6.title = @"гипермаркет «ГУМ»";
    annotationA6.subtitle = @"ул.Баумана, 51";
    annotationA6.coordinate = CLLocationCoordinate2DMake(55.787755670422854 , 49.12135362625122);
    [array addObject:annotationA6];
    
    Annotation *annotationK6 = [Annotation new];
    annotationK6.title = @"Бизнес центр»";
    annotationK6.subtitle = @"Пр.Ибрагимова 58, кол-во мест: 50";
    annotationK6.coordinate = CLLocationCoordinate2DMake(55.820100009246715, 49.09582167863846);
    [array addObject:annotationK6];
    
    Annotation *annotationA7 = [Annotation new];
    annotationA7.title = @"ТД «Казанский ЦУМ»";
    annotationA7.subtitle = @"ул.Московская 2, кол-во мест: 200";
    annotationA7.coordinate = CLLocationCoordinate2DMake(55.79268081087669 , 49.10184860229492);
    [array addObject:annotationA7];
    
    Annotation *annotationK7 = [Annotation new];
    annotationK7.title = @"ТК «Мега Мебель»»";
    annotationK7.subtitle = @"Ул.Сибирский тракт 34, кол-во мест: 100";
    annotationK7.coordinate = CLLocationCoordinate2DMake(55.81788488144342, 49.18278694152832);
    [array addObject:annotationK7];
    
    Annotation *annotationK8 = [Annotation new];
    annotationK8.title = @"РК «Ривьера»";
    annotationK8.subtitle = @"Пр.Амирхана 1а, кол-во мест: 757";
    annotationK8.coordinate = CLLocationCoordinate2DMake(55.815377264876545, 49.130001068115234);
    [array addObject:annotationK8];
    
    Annotation *annotationA8 = [Annotation new];
    annotationA8.title = @"ТРК «Пирамида»";
    annotationA8.subtitle = @"ул.Московская 3, кол-во мест: 150";
    annotationA8.coordinate = CLLocationCoordinate2DMake(55.794791825535846 , 49.10321116447449);
    [array addObject:annotationA8];
    
    Annotation *annotationK9 = [Annotation new];
    annotationK9.title = @"РК «Ривьера»";
    annotationK9.subtitle = @"Пр.Амирхана 1б, кол-во мест: 757";
    annotationK9.coordinate = CLLocationCoordinate2DMake(55.81573895031542, 49.127211570739746);
    [array addObject:annotationK9];
    
    Annotation *annotationA9 = [Annotation new];
    annotationA9.title = @"Центральный стадион";
    annotationA9.subtitle = @"ул.Ташаяк 2а, кол-во мест: 1000";
    annotationA9.coordinate = CLLocationCoordinate2DMake(55.796757981984776, 49.096269607543945);
    [array addObject:annotationA9];
    
    Annotation *annotationK10 = [Annotation new];
    annotationK10.title = @"ТК «Новинка»";
    annotationK10.subtitle = @"Ул.Короленко 28, кол-во мест: 110";
    annotationK10.coordinate = CLLocationCoordinate2DMake(55.829926422790344, 49.10264253616333);
    [array addObject:annotationK10];
    
    Annotation *annotationA10 = [Annotation new];
    annotationA10.title = @"Гранд «Отель Казань»";
    annotationA10.subtitle = @"ул.Петербургская, 1";
    annotationA10.coordinate = CLLocationCoordinate2DMake(55.78646169986234, 49.1243040561676);
    [array addObject:annotationA10];
    
    Annotation *annotationK11 = [Annotation new];
    annotationK11.title = @"Ново-Савиновский рынок";
    annotationK11.subtitle = @"Ул.Адоратского 21, кол-во мест: 220";
    annotationK11.coordinate = CLLocationCoordinate2DMake(55.83013130165304, 49.14540767669678);
    [array addObject:annotationK11];
    
    Annotation *annotationA11 = [Annotation new];
    annotationA11.title = @"ТЦ «Бэхетле»";
    annotationA11.subtitle = @"ул.Павлюхина 57, кол-во мест: 140";
    annotationA11.coordinate = CLLocationCoordinate2DMake(55.77447006827832, 49.13863241672516);
    [array addObject:annotationA11];
    
    Annotation *annotationK12 = [Annotation new];
    annotationK12.title = @"Оптовый рынок «Привоз»";
    annotationK12.subtitle = @"Ул.Адоратского 65, кол-во мест: 100";
    annotationK12.coordinate = CLLocationCoordinate2DMake(55.843831632321645, 49.144935607910156);
    [array addObject:annotationK12];
    
    Annotation *annotationK13 = [Annotation new];
    annotationK13.title = @"Розничный рынок «Стан»";
    annotationK13.subtitle = @"Пр.Амирхана 48, кол-во мест: 600";
    annotationK13.coordinate = CLLocationCoordinate2DMake(55.83133531977923, 49.133590534329414);
    [array addObject:annotationK13];
    
    Annotation *annotationA12 = [Annotation new];
    annotationA12.title = @"«Центральный рынок г.Казани»";
    annotationA12.subtitle = @"Ул.М.Межлаука 13, кол-во мест: 300 (платная)";
    annotationA12.coordinate = CLLocationCoordinate2DMake(55.78644661836699, 49.10843074321747);
    [array addObject:annotationA12];
    
    Annotation *annotationK14 = [Annotation new];
    annotationK14.title = @"Розничный рынок «Караваево»";
    annotationK14.subtitle = @"Ул.Дементьева 72, кол-во мест: 162";
    annotationK14.coordinate = CLLocationCoordinate2DMake(55.86188050048004, 49.10846829414368);
    [array addObject:annotationK14];
    
    Annotation *annotationA13 = [Annotation new];
    annotationA13.title = @"Гостиница «Татарстан»";
    annotationA13.subtitle = @"Ул.Пушкина 4, кол-во мест: 30";
    annotationA13.coordinate = CLLocationCoordinate2DMake(55.78650091172291, 49.122474789619446);
    [array addObject:annotationA13];
    
    Annotation *annotationK15 = [Annotation new];
    annotationK15.title = @"ТРК «Парк Хаус»";
    annotationK15.subtitle = @"пр.Ямашева 46, кол-во мест: 1640";
    annotationK15.coordinate = CLLocationCoordinate2DMake(55.829468454371394, 49.11807060241699);
    [array addObject:annotationK15];
    
    Annotation *annotationA14 = [Annotation new];
    annotationA14.title = @"Чеховский рынок";
    annotationA14.subtitle = @"Ул.Чехова 2, кол-во мест: 60";
    annotationA14.coordinate = CLLocationCoordinate2DMake(55.789580427655686, 49.147692918777466);
    [array addObject:annotationA14];
    
    Annotation *annotationK16 = [Annotation new];
    annotationK16.title = @"ТК «Бэхетле»";
    annotationK16.subtitle = @"пр.Ямашева 71а, кол-во мест: 300";
    annotationK16.coordinate = CLLocationCoordinate2DMake(55.82622636583872, 49.13536548614502);
    [array addObject:annotationK16];
    
    Annotation *annotationA15 = [Annotation new];
    annotationA15.title = @"«Сити-центр»";
    annotationA15.subtitle = @"Ул.Парина 3, кол-во мест: 511";
    annotationA15.coordinate = CLLocationCoordinate2DMake(55.74469677773677, 49.19453501701355);
    [array addObject:annotationA15];
    
    Annotation *annotationA16 = [Annotation new];
    annotationA16.title = @"ТД «Олимп»";
    annotationA16.subtitle = @"Ул.Р.Зорге 70, кол-во мест: 24";
    annotationA16.coordinate = CLLocationCoordinate2DMake(55.74673188876475, 49.212881326675415);
    [array addObject:annotationA16];
    
    Annotation *annotationA17 = [Annotation new];
    annotationA17.title = @"«Евроинтерьер»";
    annotationA17.subtitle = @"Ул.Р.Зорге 82, кол-во мест: 15";
    annotationA17.coordinate = CLLocationCoordinate2DMake(55.7454697700952, 49.21507000923157);
    [array addObject:annotationA17];
    
    Annotation *annotationK19 = [Annotation new];
    annotationK19.title = @"Двор дома №56 по ул.Баумана, въезд с ул.Островского";
    annotationK19.subtitle = @"Ул.Баумана 56, кол-во мест: 70";
    annotationK19.coordinate = CLLocationCoordinate2DMake(55.790491266225246, 49.11492705345154);
    [array addObject:annotationK19];
    
    Annotation *annotationA18 = [Annotation new];
    annotationA18.title = @"Центральный дом мебели";
    annotationA18.subtitle = @"Ул.Тукая 115, кол-во мест: 165";
    annotationA18.coordinate = CLLocationCoordinate2DMake(55.76673011297474, 49.12569880485535);
    [array addObject:annotationA18];
    
    Annotation *annotationK20 = [Annotation new];
    annotationK20.title = @"Проезжая часть ул.Тихомирного";
    annotationK20.subtitle = @"ул.Тихомирного от ул.Эсперанто до ул.Калинина, кол-во мест: 200";
    annotationK20.coordinate = CLLocationCoordinate2DMake(55.778310808824294, 49.143197536468506);
    [array addObject:annotationK20];
    
    Annotation *annotationA19 = [Annotation new];
    annotationA19.title = @"ПТЦ «Ирбис»";
    annotationA19.subtitle = @"Ул.Фучика 105а, кол-во мест: 20";
    annotationA19.coordinate = CLLocationCoordinate2DMake(55.755013152136456, 49.22999382019043);
    [array addObject:annotationA19];
    
    Annotation *annotationA20 = [Annotation new];
    annotationA20.title = @"ТК «Проспект»";
    annotationA20.subtitle = @"Пр.Победы 50а, кол-во мест: ";
    annotationA20.coordinate = CLLocationCoordinate2DMake(55.74887860448956 , 49.20767784118652);
    [array addObject:annotationA20];
    
    Annotation *annotationA21 = [Annotation new];
    annotationA21.title = @"ЗАО ТК «Эдельвейс»";
    annotationA21.subtitle = @"Ул.Оренбургский тракт 144, кол-во мест: 52";
    annotationA21.coordinate = CLLocationCoordinate2DMake(55.72952068254925, 49.19747471809387);
    [array addObject:annotationA21];
    
    Annotation *annotationA22 = [Annotation new];
    annotationA22.title = @"ТК «Бэхетле»";
    annotationA22.subtitle = @"Оренбургский тракт 22г, кол-во мест: 98";
    annotationA22.coordinate = CLLocationCoordinate2DMake(55.753443379431566, 49.16010618209839);
    [array addObject:annotationA22];
    
    Annotation *annotationA23 = [Annotation new];
    annotationA23.title = @"Супермаркет «Бэхетле»";
    annotationA23.subtitle = @"Ул.Зорге 77, кол-во мест: 30";
    annotationA23.coordinate = CLLocationCoordinate2DMake(55.74762259387401, 49.21452283859253);
    [array addObject:annotationA23];
    
    Annotation *annotationA24 = [Annotation new];
    annotationA24.title = @"ТЦ «Мега» (Икея)";
    annotationA24.subtitle = @"пр.Победы 141, кол-во мест: 2100";
    annotationA24.coordinate = CLLocationCoordinate2DMake(55.78093544912811 , 49.21302080154419);
    [array addObject:annotationA24];
    
    Annotation *annotationA25 = [Annotation new];
    annotationA25.title = @"ТЦ «Мега» (Икея)";
    annotationA25.subtitle = @"пр.Победы 141, кол-во мест: 384 (платная)";
    annotationA25.coordinate = CLLocationCoordinate2DMake(55.78093544912811 , 49.21302080154419);
    [array addObject:annotationA25];
 
    Annotation *annotationA26 = [Annotation new];
    annotationA26.title = @"«Метро Кеш энд Керри»";
    annotationA26.subtitle = @"ул.Вахитова 4, кол-во мест: 539";
    annotationA26.coordinate = CLLocationCoordinate2DMake(55.812423374632296,  49.08172130584717);
    [array addObject:annotationA26];

    Annotation *annotationK21 = [Annotation new];
    annotationK21.title = @"Территория Речного порта";
    annotationK21.subtitle = @"Ул.Девятаева 1, кол-во мест: 300";
    annotationK21.coordinate = CLLocationCoordinate2DMake(55.773326522521, 49.091506004333496);
    [array addObject:annotationK21];
    
    Annotation *annotationA27 = [Annotation new];
    annotationA27.title = @"Магазин «Бэхетле» ";
    annotationA27.subtitle = @"ул. Залесная 66, кол-во мест: 60";
    annotationA27.coordinate = CLLocationCoordinate2DMake(55.850496296363794 , 48.89539897441864);
    [array addObject:annotationA27];

    Annotation *annotationA28 = [Annotation new];
    annotationA28.title = @"Магазин «Эдельвейс»";
    annotationA28.subtitle = @"Ул.Адоратского 12, кол-во мест: 30";
    annotationA28.coordinate = CLLocationCoordinate2DMake(55.83189080509834, 49.148465394973755);
    [array addObject:annotationA28];
    
    Annotation *annotationK22 = [Annotation new];
    annotationK22.title = @"Территория перед заводом «Серп и Молот»";
    annotationK22.subtitle = @"ул.Кл.Цеткин 8, кол-во мест: 440";
    annotationK22.coordinate = CLLocationCoordinate2DMake(55.799871, 49.06422);
    [array addObject:annotationK22];
    
    Annotation *annotationA29 = [Annotation new];
    annotationA29.title = @"ТЦ «Бэхетле»";
    annotationA29.subtitle = @"Пр.Амирхана 23, кол-во мест: 300";
    annotationA29.coordinate = CLLocationCoordinate2DMake(55.82578040687001, 49.13214683532715 );
    [array addObject:annotationA29];
    
    Annotation *annotationK23 = [Annotation new];
    annotationK23.title = @"ЗАГС Кировского района по ул.Фрунзе";
    annotationK23.subtitle = @"ул.Болотникова 35а, кол-во мест: 20 ";
    annotationK23.coordinate = CLLocationCoordinate2DMake(55.824153215923374, 49.04194951057434);
    [array addObject:annotationK23];
    
    Annotation *annotationK24 = [Annotation new];
    annotationK24.title = @"территория перед зданием старого аэропорта";
    annotationK24.subtitle = @"ул.Космонавтов, кол-во мест: 300";
    annotationK24.coordinate = CLLocationCoordinate2DMake(55.793742363978865, 49.181907176971436);
    [array addObject:annotationK24];
    
    Annotation *annotationA31 = [Annotation new];
    annotationA31.title = @"ТК «Тандем»";
    annotationA31.subtitle = @"просп. Ибрагимова 56, кол-во мест: 1300";
    annotationA31.coordinate = CLLocationCoordinate2DMake(55.82133259038037, 49.09342646598816);
    [array addObject:annotationA31];
    
    Annotation *annotationK25 = [Annotation new];
    annotationK25.title = @"прилегающая территория стадиона «Мирас»";
    annotationK25.subtitle = @"ул.Ак.Глушко, Дж.Файзи, кол-во мест: 34  ";
    annotationK25.coordinate = CLLocationCoordinate2DMake(55.7910522356732, 49.228620529174805);
    [array addObject:annotationK25];
    
    Annotation *annotationA32 = [Annotation new];
    annotationA32.title = @"ТК «Южный», Мегастрой";
    annotationA32.subtitle = @"проспект Победы 109, кол-во мест: 1000";
    annotationA32.coordinate = CLLocationCoordinate2DMake(55.772415282621516, 49.21720504760742);
    [array addObject:annotationA32];
    
    Annotation *annotationK26 = [Annotation new];
    annotationK26.title = @"прилегающая территория СК «Центр бокса»";
    annotationK26.subtitle = @"ул.Ак.Глушко, Дж.Файзи, кол-во мест: 31 ";
    annotationK26.coordinate = CLLocationCoordinate2DMake(55.79047317030209, 49.228148460388184);
    [array addObject:annotationK26];
    
    Annotation *annotationA33 = [Annotation new];
    annotationA33.title = @"Мегастрой, Агава";
    annotationA33.subtitle = @"ул Азинская 2-я 7, кол-во мест: 350";
    annotationA33.coordinate = CLLocationCoordinate2DMake(55.800876938848695, 49.20900821685791);
    [array addObject:annotationA33];
    
    Annotation *annotationK27 = [Annotation new];
    annotationK27.title = @"прилегающая территория СК «Ак Буре»";
    annotationK27.subtitle = @"улица Рашида Вагапова 17, кол-во мест:31";
    annotationK27.coordinate = CLLocationCoordinate2DMake(55.78403048742547, 49.23145294189453);
    [array addObject:annotationK27];
    
    Annotation *annotationA34 = [Annotation new];
    annotationA34.title = @"ТЦ «Азино»";
    annotationA34.subtitle = @"Ул.Минская 9, кол-во мест: 200";
    annotationA34.coordinate = CLLocationCoordinate2DMake(55.773459284172084, 49.23031568527222 );
    [array addObject:annotationA34];
    
    Annotation *annotationK28 = [Annotation new];
    annotationK28.title = @"Прилегающая территория к конно-спортивному комплексу «Казань»";
    annotationK28.subtitle = @"ул. П. Лумумбы 47а, кол-во мест: 1400";
    annotationK28.coordinate = CLLocationCoordinate2DMake(55.79322365414599, 49.187378883361816);
    [array addObject:annotationK28];
    
    Annotation *annotationK29 = [Annotation new];
    annotationK29.title = @"ООО «Мой дом»";
    annotationK29.subtitle = @"ул.Ибрагимова 54, кол-во мест: 200";
    annotationK29.coordinate = CLLocationCoordinate2DMake(55.827949888925154, 49.09340500831604);
    [array addObject:annotationK29];

    Annotation *annotationA35 = [Annotation new];
    annotationA35.title = @"ТЦ «Грани»";
    annotationA35.subtitle = @"Ул.Сибирский тракт 34, кол-во мест: 500";
    annotationA35.coordinate = CLLocationCoordinate2DMake(55.81792104780794, 49.1828727722168 );
    [array addObject:annotationA35];
   
    Annotation *annotationA36 = [Annotation new];
    annotationA36.title = @"ТРЦ «Франт»";
    annotationA36.subtitle = @"Ул.Фучика 90, кол-во мест: 700";
    annotationA36.coordinate = CLLocationCoordinate2DMake(55.76346468848582, 49.23324465751648  );
    [array addObject:annotationA36];

    Annotation *annotationA37 = [Annotation new];
    annotationA37.title = @"Регистрационная палата";
    annotationA37.subtitle = @"Ул.Авангардная-Кулагина 74, кол-во мест: 500";
    annotationA37.coordinate = CLLocationCoordinate2DMake(55.74088896297058,  49.14430260658264 );
    [array addObject:annotationA37];
    
    Annotation *annotationK30 = [Annotation new];
    annotationK30.title = @"Центр покупок ООО «Ринго»";
    annotationK30.subtitle = @"Ул.Чистопольская 7, кол-во мест: 40";
    annotationK30.coordinate = CLLocationCoordinate2DMake(55.820320008253084, 49.10446643829346);
    [array addObject:annotationK30];
    
    Annotation *annotationA38 = [Annotation new];
    annotationA38.title = @"Торговые ряды «Алтын»";
    annotationA38.subtitle = @"Ул.Марселя Салимжанова 5, кол-во мест: 60";
    annotationA38.coordinate = CLLocationCoordinate2DMake(55.78138795545146, 49.12470102310181  );
    [array addObject:annotationA38];
    
    Annotation *annotationK31 = [Annotation new];
    annotationK31.title = @"ООО «Мебель-град»";
    annotationK31.subtitle = @"Ул.Рахимова 8, кол-во мест: 117";
    annotationK31.coordinate = CLLocationCoordinate2DMake(55.84036784460572, 49.03098464012146);
    [array addObject:annotationK31];
    
    Annotation *annotationA39 = [Annotation new];
    annotationA39.title = @"ТЦ «Ягодная слобода»";
    annotationA39.subtitle = @"Ул.Краснококшайская 150/2, кол-во мест: 150";
    annotationA39.coordinate = CLLocationCoordinate2DMake(55.817776382148196, 49.06425476074219 );
    [array addObject:annotationA39];

    Annotation *annotationK32 = [Annotation new];
    annotationK32.title = @"Автосалон ООО «ТрансТехСервис»";
    annotationK32.subtitle = @"Пр.Ибрагимова 48, кол-во мест: 80";
    annotationK32.coordinate = CLLocationCoordinate2DMake(55.823244671368315, 49.093879759311676);
    [array addObject:annotationK32];
    
    Annotation *annotationA40 = [Annotation new];
    annotationA40.title = @"ТЦ «Петрушка»";
    annotationA40.subtitle = @"Ул.Адмиралтейская 3, кол-во мест: 150";
    annotationA40.coordinate = CLLocationCoordinate2DMake(55.800617632307564, 49.05348300933838 );
    [array addObject:annotationA40];
    
    Annotation *annotationK33 = [Annotation new];
    annotationK33.title = @"Автосалон ООО «РРТ-Казань»";
    annotationK33.subtitle = @"Ул.Восстания 131, кол-во мест: 50";
    annotationK33.coordinate = CLLocationCoordinate2DMake(55.829304247276255, 49.04767334461212);
    [array addObject:annotationK33];
    
    Annotation *annotationA41 = [Annotation new];
    annotationA41.title = @"Мебельный универсальный магазин";
    annotationA41.subtitle = @"Ул.Лазарева 7, кол-во мест: 45";
    annotationA41.coordinate = CLLocationCoordinate2DMake(55.81953644447354, 49.0504789352417 );
    [array addObject:annotationA41];
    
    Annotation *annotationK34 = [Annotation new];
    annotationK34.title = @"ТЦ «Саборг»";
    annotationK34.subtitle = @"Ул.Лушникова 10, кол-во мест: 40";
    annotationK34.coordinate = CLLocationCoordinate2DMake(55.81949425213002, 49.08371150493622);
    [array addObject:annotationK34];
    
    Annotation *annotationA42 = [Annotation new];
    annotationA42.title = @"ТЦ «Факел»";
    annotationA42.subtitle = @"Ул.Горьковское шоссе 47, кол-во мест: 20";
    annotationA42.coordinate = CLLocationCoordinate2DMake(55.82634086799229, 49.026339054107666 );
    [array addObject:annotationA42];

    Annotation *annotationA43 = [Annotation new];
    annotationA43.title = @"Автосалон «Акос»";
    annotationA43.subtitle = @"Ул.Горьковское шоссе 49, кол-во мест: 50";
    annotationA43.coordinate = CLLocationCoordinate2DMake(55.826714504254426, 49.02342081069946 );
    [array addObject:annotationA43];
    
    Annotation *annotationK35 = [Annotation new];
    annotationK35.title = @"Гипермаркет «М.Видео»";
    annotationK35.subtitle = @"Ул.Декабристов 79, кол-во мест: 150";
    annotationK35.coordinate = CLLocationCoordinate2DMake(55.81745238939662, 49.093434512615204);
    [array addObject:annotationK35];
    
    Annotation *annotationA44 = [Annotation new];
    annotationA44.title = @"Автосалон ООО «Парус»";
    annotationA44.subtitle = @"Ул.Кожевенная 28, кол-во мест: 40";
    annotationA44.coordinate = CLLocationCoordinate2DMake(55.803831705381604, 49.067344665527344 );
    [array addObject:annotationA44];

    Annotation *annotationA45 = [Annotation new];
    annotationA45.title = @"Платная парковка";
    annotationA45.subtitle = @"Профсоюзная 32 (платная)";
    annotationA45.coordinate = CLLocationCoordinate2DMake(55.79008410592093, 49.11880552768707 );
    [array addObject:annotationA45];
    
    Annotation *annotationA46 = [Annotation new];
    annotationA46.title = @"Гранд-О, ООО, автокомплекс";
    annotationA46.subtitle = @"Островского, 22";
    annotationA46.coordinate = CLLocationCoordinate2DMake(55.7876832815964, 49.11644518375397 );
    [array addObject:annotationA46];
    
    Annotation *annotationA47 = [Annotation new];
    annotationA47.title = @"КАРСАР, автокомплекс";
    annotationA47.subtitle = @"Оренбургский тракт, 144а к1";
    annotationA47.coordinate = CLLocationCoordinate2DMake(55.729137051050465, 49.19482469558716 );
    [array addObject:annotationA47];
    
    Annotation *annotationA48 = [Annotation new];
    annotationA48.title = @"ООО Ютер";
    annotationA48.subtitle = @"Дубравная, 47в";
    annotationA48.coordinate = CLLocationCoordinate2DMake(55.738071363626126, 49.20144438743591 );
    [array addObject:annotationA48];
    
    Annotation *annotationA49 = [Annotation new];
    annotationA49.title = @"ООО Тулпар-Сервис";
    annotationA49.subtitle = @"Аэропорт, 5";
    annotationA49.coordinate = CLLocationCoordinate2DMake(55.608456898910504, 49.29818093776703 );
    [array addObject:annotationA49];
    
    Annotation *annotationA50 = [Annotation new];
    annotationA50.title = @"Всероссийское общество автомобилистов";
    annotationA50.subtitle = @"Ямашева проспект, 29в";
    annotationA50.coordinate = CLLocationCoordinate2DMake(55.82662712190174, 49.10615086555481 );
    [array addObject:annotationA50];
    
    Annotation *annotationA51 = [Annotation new];
    annotationA51.title = @"ИП Хуснуллин А.Р.";
    annotationA51.subtitle = @"Рустема Яхина, 4а";
    annotationA51.coordinate = CLLocationCoordinate2DMake(55.79120604846539, 49.102492332458496 );
    [array addObject:annotationA51];
    
    Annotation *annotationA52 = [Annotation new];
    annotationA52.title = @"Автостоянка на ул. Академика Завойского, 3/1";
    annotationA52.subtitle = @"ул. Академика Завойского 3/1";
    annotationA52.coordinate = CLLocationCoordinate2DMake(55.75867168483579, 49.23368453979492 );
    [array addObject:annotationA52];
    
    Annotation *annotationA53 = [Annotation new];
    annotationA53.title = @"Автостоянка на проспекте Победы, 19/1";
    annotationA53.subtitle = @"просп. Победы 19/1";
    annotationA53.coordinate = CLLocationCoordinate2DMake(55.748676317050105, 49.20356333255768 );
    [array addObject:annotationA53];
    
    Annotation *annotationA54 = [Annotation new];
    annotationA54.title = @"Автостоянка на ул. Аделя Кутуя, 84а";
    annotationA54.subtitle = @"Аделя Кутуя, 84а";
    annotationA54.coordinate = CLLocationCoordinate2DMake(55.78319792819599, 49.18495953083038 );
    [array addObject:annotationA54];
    
    Annotation *annotationA55 = [Annotation new];
    annotationA55.title = @"Автостоянка на ул. Вахитова, 8а";
    annotationA55.subtitle = @"ул. Вахитова, 8а";
    annotationA55.coordinate = CLLocationCoordinate2DMake(55.814280131815075, 49.088072776794434 );
    [array addObject:annotationA55];
    
    Annotation *annotationA56 = [Annotation new];
    annotationA56.title = @"Автостоянка на Мамадышском тракте, 8/1";
    annotationA56.subtitle = @"Мамадышский тракт, 8/1";
    annotationA56.coordinate = CLLocationCoordinate2DMake(55.795220045978446, 49.223862290382385 );
    [array addObject:annotationA56];
   
    Annotation *annotationA57 = [Annotation new];
    annotationA57.title = @"ООО Голден Лайнс";
    annotationA57.subtitle = @"ул. Красной Позиции, 32";
    annotationA57.coordinate = CLLocationCoordinate2DMake(55.78311949778646, 49.16458010673523 );
    [array addObject:annotationA57];
    
    Annotation *annotationK36 = [Annotation new];
    annotationK36.title = @"Автостоянка на проспекте Ибрагимова, 44а";
    annotationK36.subtitle = @"Ибрагимова проспект, 44а";
    annotationK36.coordinate = CLLocationCoordinate2DMake(55.824665487080686, 49.09340500831604);
    [array addObject:annotationK36];
    
    Annotation *annotationK37 = [Annotation new];
    annotationK37.title = @"Автостоянка на ул. Адоратского, 54/1";
    annotationK37.subtitle = @"ул. Адоратского, 54/1";
    annotationK37.coordinate = CLLocationCoordinate2DMake(55.84256663258132, 49.14942026138306);
    [array addObject:annotationK37];
    
    Annotation *annotationK38 = [Annotation new];
    annotationK38.title = @"Автостоянка на ул. Закиева, 4/2";
    annotationK38.subtitle = @"ул. Закиева, 4/2";
    annotationK38.coordinate = CLLocationCoordinate2DMake(55.77582477959654, 49.22482252120972);
    [array addObject:annotationK38];
    
    Annotation *annotationK39 = [Annotation new];
    annotationK39.title = @"Автостоянка на проспекте Ямашева, 101а";
    annotationK39.subtitle = @"Ямашева проспект, 101а";
    annotationK39.coordinate = CLLocationCoordinate2DMake(55.77582477959654, 49.22482252120972);
    [array addObject:annotationK39];
    
    Annotation *annotationK40 = [Annotation new];
    annotationK40.title = @"Автостоянка, ОАО КМПО";
    annotationK40.subtitle = @"Челюскина, 53";
    annotationK40.coordinate = CLLocationCoordinate2DMake(55.86902064730255, 49.080970287323);
    [array addObject:annotationK40];
    
    Annotation *annotationK41 = [Annotation new];
    annotationK41.title = @"Автостоянка, ООО Восход-ГазТО";
    annotationK41.subtitle = @"ЧПобеды проспект, 9/1";
    annotationK41.coordinate = CLLocationCoordinate2DMake(55.74361879016866, 49.19258236885071);
    [array addObject:annotationK41];
    
    Annotation *annotationK42 = [Annotation new];
    annotationK42.title = @"Автостоянка на проспекте Победы, 50е";
    annotationK42.subtitle = @"Победы проспект, 50е";
    annotationK42.coordinate = CLLocationCoordinate2DMake(55.74774940447325, 49.205360412597656);
    [array addObject:annotationK42];
    
    Annotation *annotationK43 = [Annotation new];
    annotationK43.title = @"Автостоянка на ул. Восстания, 104а";
    annotationK43.subtitle = @"Восстания, 104а";
    annotationK43.coordinate = CLLocationCoordinate2DMake(55.83258976382735, 49.05194878578186);
    [array addObject:annotationK43];
    
    Annotation *annotationK44 = [Annotation new];
    annotationK44.title = @"Автостоянка на ул. Комиссара Габишева, ";
    annotationK44.subtitle = @"Комиссара Габишева, 8в";
    annotationK44.coordinate = CLLocationCoordinate2DMake(55.74477226594649, 49.23325538635254);
    [array addObject:annotationK44];
    [array addObject:annotationA55];
    
    Annotation *annotationK45 = [Annotation new];
    annotationK45.title = @"Платная парковка, Авиастроительный район";
    annotationK45.subtitle = @"Беломорская, 22Б";
    annotationK45.coordinate = CLLocationCoordinate2DMake(55.865860120270895, 49.078524112701416);
    [array addObject:annotationK45];
    
    
    Annotation *annotationK46 = [Annotation new];
    annotationK46.title = @"Техника, ООО, автостоянка";
    annotationK46.subtitle = @"Портовая, 2а";
    annotationK46.coordinate = CLLocationCoordinate2DMake(55.77568599173782, 49.101505279541016);
    [array addObject:annotationK46];
    
    Annotation *annotationK47 = [Annotation new];
    annotationK47.title = @"Автостоянка на ул. Батыршина, 31а";
    annotationK47.subtitle = @"Батыршина, 31а";
    annotationK47.coordinate = CLLocationCoordinate2DMake(55.82346615931017, 49.06167984008789);
    [array addObject:annotationK47];
    
    Annotation *annotationK48 = [Annotation new];
    annotationK48.title = @"Автостоянка на ул. Туфана Миннулина, 10/1";
    annotationK48.subtitle = @"Туфана Миннулина, 10/1";
    annotationK48.coordinate = CLLocationCoordinate2DMake(55.77835, 49.133624);
    [array addObject:annotationK48];
    
    Annotation *annotationK49 = [Annotation new];
    annotationK49.title = @"Ватан, автостоянка";
    annotationK49.subtitle = @"Четаева, 16Б";
    annotationK49.coordinate = CLLocationCoordinate2DMake(55.82309249184752, 49.13936734199524);
    [array addObject:annotationK49];
    
    Annotation *annotationK50 = [Annotation new];
    annotationK50.title = @"Автостоянка, ООО Антей";
    annotationK50.subtitle = @"Профессора Мухамедьярова, 32 к1";
    annotationK50.coordinate = CLLocationCoordinate2DMake(55.84007867967453, 49.07514452934265);
    [array addObject:annotationK50];
    
    Annotation *annotationK51 = [Annotation new];
    annotationK51.title = @"Автостоянка на Азинской 2-ой, 3в к1";
    annotationK51.subtitle = @"Азинская 2-я, 3в к1";
    annotationK51.coordinate = CLLocationCoordinate2DMake(55.80463367474843, 49.203912019729614);
    [array addObject:annotationK51];
    
    Annotation *annotationK52 = [Annotation new];
    annotationK52.title = @"Автостоянка на ул. Закиева, 4/1";
    annotationK52.subtitle = @"Закиева, 4/1";
    annotationK52.coordinate = CLLocationCoordinate2DMake(55.775836848082626, 49.22482252120972);
    [array addObject:annotationK52];
    
    Annotation *annotationK53 = [Annotation new];
    annotationK53.title = @"Автостоянка на ул. Кулахметова, 5/2";
    annotationK53.subtitle = @"Кулахметова, 5/2";
    annotationK53.coordinate = CLLocationCoordinate2DMake(55.823369729340804, 49.05128359794617);
    [array addObject:annotationK53];
    
    Annotation *annotationK54 = [Annotation new];
    annotationK54.title = @"Автостоянка на Минской, 12а";
    annotationK54.subtitle = @"Минская, 12а";
    annotationK54.coordinate = CLLocationCoordinate2DMake(55.772191995423064, 49.22153949737549);
    [array addObject:annotationK54];
    
    Annotation *annotationK55 = [Annotation new];
    annotationK55.title = @"Автостоянка, ООО Тамле";
    annotationK55.subtitle = @"Татарстан, 55а";
    annotationK55.coordinate = CLLocationCoordinate2DMake(55.773854, 49.106342);
    [array addObject:annotationK55];
    
    Annotation *annotationK56 = [Annotation new];
    annotationK56.title = @"Автостоянка на ул. Юлиуса Фучика, 84/1";
    annotationK56.subtitle = @"Юлиуса Фучика, 84/1";
    annotationK56.coordinate = CLLocationCoordinate2DMake(55.761158808123824, 49.23591613769531);
    [array addObject:annotationK56];
    
    Annotation *annotationK57 = [Annotation new];
    annotationK57.title = @"Автостоянка на ул. Фатыха Амирхана, 105 к2";
    annotationK57.subtitle = @"Фатыха Амирхана, 105 к2";
    annotationK57.coordinate = CLLocationCoordinate2DMake(55.84281963582246, 49.12890672683716);
    [array addObject:annotationK57];
    
    Annotation *annotationK58 = [Annotation new];
    annotationK58.title = @"Автостоянка на ул. Чапаева, 14/1";
    annotationK58.subtitle = @"Чапаева, 14/1";
    annotationK58.coordinate = CLLocationCoordinate2DMake(55.86433093487769, 49.08264398574829);
    [array addObject:annotationK58];
    
    Annotation *annotationK59 = [Annotation new];
    annotationK59.title = @"Автостоянка на ул. Адоратского, 43а";
    annotationK59.subtitle = @"Адоратского, 43а";
    annotationK59.coordinate = CLLocationCoordinate2DMake(55.83909068326579, 49.143004417419434);
    [array addObject:annotationK59];
    
    Annotation *annotationK60 = [Annotation new];
    annotationK60.title = @"Автостоянка на ул. Алафузова, 18в";
    annotationK60.subtitle = @"ул. Алафузова, 18в";
    annotationK60.coordinate = CLLocationCoordinate2DMake(55.811993, 49.071964);
    [array addObject:annotationK60];
    
    Annotation *annotationK61 = [Annotation new];
    annotationK61.title = @"Автостоянка на Минской, 32а";
    annotationK61.subtitle = @"Минской, 32а";
    annotationK61.coordinate = CLLocationCoordinate2DMake(55.77210750804145, 49.23395276069641);
    [array addObject:annotationK61];
    
    Annotation *annotationK62 = [Annotation new];
    annotationK62.title = @"Автостоянка на ул. Юлиуса Фучика, 117Б";
    annotationK62.subtitle = @"Юлиуса Фучика, 117Б";
    annotationK62.coordinate = CLLocationCoordinate2DMake(55.76454514571665, 49.23053026199341);
    [array addObject:annotationK62];
    
    Annotation *annotationK63 = [Annotation new];
    annotationK63.title = @"Автостоянка на Минской, 1в";
    annotationK63.subtitle = @"Минской, 1в";
    annotationK63.coordinate = CLLocationCoordinate2DMake(55.77267477694781, 49.222097396850586);
    [array addObject:annotationK63];
    
    Annotation *annotationK64 = [Annotation new];
    annotationK64.title = @"Гостевая, автостоянка";
    annotationK64.subtitle = @"Лечебная, 7а";
    annotationK64.coordinate = CLLocationCoordinate2DMake(55.85799681733138, 49.078320264816284);
    [array addObject:annotationK64];
    
    Annotation *annotationK65 = [Annotation new];
    annotationK65.title = @"Автостоянка, ИП Гайнуллин Ф.Д.";
    annotationK65.subtitle = @"Академика Завойского, 5а";
    annotationK65.coordinate = CLLocationCoordinate2DMake(55.7585509466586, 49.235562086105350);
    [array addObject:annotationK65];
    
    Annotation *annotationK66 = [Annotation new];
    annotationK66.title = @"Автостоянка, ИП Тахтеев Н.К.";
    annotationK66.subtitle = @"Комиссара Габишева, 1Б";
    annotationK66.coordinate = CLLocationCoordinate2DMake(55.740792328419744, 49.22749400138855);
    [array addObject:annotationK66];
    
    Annotation *annotationK67 = [Annotation new];
    annotationK67.title = @"Автостоянка на ул. Академика Глушко, 18/1";
    annotationK67.subtitle = @"Академика Глушко, 18/1";
    annotationK67.coordinate = CLLocationCoordinate2DMake(55.78479666751835, 49.23440337181091);
    [array addObject:annotationK67];
    
    Annotation *annotationK68 = [Annotation new];
    annotationK68.title = @"Автостоянка на Сибирском тракте, 27 к3";
    annotationK68.subtitle = @"Сибирский тракт, 27 к3";
    annotationK68.coordinate = CLLocationCoordinate2DMake(55.81339999172602, 49.17999744415283);
    [array addObject:annotationK68];
    
    Annotation *annotationK69 = [Annotation new];
    annotationK69.title = @"Автостоянка на ул. Блюхера, 2/2";
    annotationK69.subtitle = @"Блюхера, 2/2";
    annotationK69.coordinate = CLLocationCoordinate2DMake(55.82518980469145, 49.07589554786682);
    [array addObject:annotationK69];
    
    Annotation *annotationK70 = [Annotation new];
    annotationK70.title = @"Автостоянка на ул. Карбышева, 62/1";
    annotationK70.subtitle = @"Карбышева, 62/1";
    annotationK70.coordinate = CLLocationCoordinate2DMake(55.75366677401814, 49.17836666107178);
    [array addObject:annotationK70];
    
    Annotation *annotationK71 = [Annotation new];
    annotationK71.title = @"Автостоянка на ул. Тыныч, 8а";
    annotationK71.subtitle = @"Тыныч, 8а";
    annotationK71.coordinate = CLLocationCoordinate2DMake(55.779861479751716, 49.24120545387268);
    [array addObject:annotationK71];
    
    Annotation *annotationK72 = [Annotation new];
    annotationK72.title = @"Автостоянка на ул. Болотникова, 7/1";
    annotationK72.subtitle = @"Болотникова, 7/1";
    annotationK72.coordinate = CLLocationCoordinate2DMake(55.81983178959723, 49.05202388763428);
    [array addObject:annotationK72];
    
    Annotation *annotationK73 = [Annotation new];
    annotationK73.title = @"Автостоянка на ул. Закиева, 2/2";
    annotationK73.subtitle = @"Закиева, 2/2";
    annotationK73.coordinate = CLLocationCoordinate2DMake(55.77584288232428, 49.224103689193726);
    [array addObject:annotationK73];
    
    Annotation *annotationK74 = [Annotation new];
    annotationK74.title = @"Автостоянка на ул. Родины, 49/2";
    annotationK74.subtitle = @"ул. Родины, 49/2";
    annotationK74.coordinate = CLLocationCoordinate2DMake(55.768576978749095, 49.2108428478241);
    [array addObject:annotationK74];
    
    Annotation *annotationA58 = [Annotation new];
    annotationA58.title = @"ООО Ашит";
    annotationA58.subtitle = @"ул. Академика Лаврентьева, 3Б";
    annotationA58.coordinate = CLLocationCoordinate2DMake(55.8314381322366, 49.136234521865845 );
    [array addObject:annotationA58];
    
    Annotation *annotationK75 = [Annotation new];
    annotationK75.title = @"Автостоянка, ООО Дулкын";
    annotationK75.subtitle = @"Кулахметова, 25а";
    annotationK75.coordinate = CLLocationCoordinate2DMake(55.82969442630468, 49.05927121639252);
    [array addObject:annotationK75];
    Annotation *annotationA59 = [Annotation new];
    annotationA59.title = @"Автостоянка на ул. Серова, 22/1";
    annotationA59.subtitle = @"ул. Серова, 22/1";
    annotationA59.coordinate = CLLocationCoordinate2DMake(55.82705800539354, 49.06468257308006 );
    [array addObject:annotationA59];
    
    Annotation *annotationK76 = [Annotation new];
    annotationK76.title = @"Автостоянка на ул. Академика Глушко, 10в";
    annotationK76.subtitle = @"Академика Глушко, 10в";
    annotationK76.coordinate = CLLocationCoordinate2DMake(55.78098371671964, 49.237080216407776);
    [array addObject:annotationK76];
    
    Annotation *annotationK77 = [Annotation new];
    annotationK77.title = @"Автостоянка на ул. Липатова, 15Б";
    annotationK77.subtitle = @"Липатова, 15Б";
    annotationK77.coordinate = CLLocationCoordinate2DMake(55.86840361222922, 49.21958148479462);
    [array addObject:annotationK77];
    
    Annotation *annotationK78 = [Annotation new];
    annotationK78.title = @"Автостоянка на ул. Солидарности, 16а";
    annotationK78.subtitle = @"Солидарности, 16а";
    annotationK78.coordinate = CLLocationCoordinate2DMake(55.86002902554227, 49.227842688560486);
    [array addObject:annotationK78];
    
    Annotation *annotationK79 = [Annotation new];
    annotationK79.title = @"Автостоянка на Технической, 25/1";
    annotationK79.subtitle = @"Техническая, 25/1";
    annotationK79.coordinate = CLLocationCoordinate2DMake(55.74891785416975, 49.13108468055725);
    [array addObject:annotationK79];
    
    Annotation *annotationK80 = [Annotation new];
    annotationK80.title = @"Берег, автостоянка";
    annotationK80.subtitle = @"Гвардейская, 51";
    annotationK80.coordinate = CLLocationCoordinate2DMake(55.77793369080791, 49.17337238788605);
    [array addObject:annotationK80];
    
    Annotation *annotationK81 = [Annotation new];
    annotationK81.title = @"Автостоянка на ул. Дементьева, 3/2";
    annotationK81.subtitle = @"Дементьева, 3/2";
    annotationK81.coordinate = CLLocationCoordinate2DMake(55.85716583935586, 49.099751114845276);
    [array addObject:annotationK81];
    
    Annotation *annotationK82 = [Annotation new];
    annotationK82.title = @"Автостоянка на Кадышевской 2-й, 41";
    annotationK82.subtitle = @"Кадышевская 2-я, 41";
    annotationK82.coordinate = CLLocationCoordinate2DMake(55.845382706773826, 49.15659248828888);
    [array addObject:annotationK82];
    
    
    Annotation *annotationK83 = [Annotation new];
    annotationK83.title = @"Автостоянка на ул. Четаева, 58/1";
    annotationK83.subtitle = @"Четаева, 58/1";
    annotationK83.coordinate = CLLocationCoordinate2DMake(55.822974966661704, 49.11466956138611);
    [array addObject:annotationK83];
    
    Annotation *annotationK84 = [Annotation new];
    annotationK84.title = @"Автостоянка на ул. Болотникова, 9/1";
    annotationK84.subtitle = @"Болотникова, 9/1";
    annotationK84.coordinate = CLLocationCoordinate2DMake(55.81998850242598, 49.05225455760956);
    [array addObject:annotationK84];
    
    Annotation *annotationK85 = [Annotation new];
    annotationK85.title = @"Автостоянка на Минской, 11/1";
    annotationK85.subtitle = @"Минская, 11/1";
    annotationK85.coordinate = CLLocationCoordinate2DMake(55.7730066857774, 49.23375964164734);
    [array addObject:annotationK85];
    
    Annotation *annotationK86 = [Annotation new];
    annotationK86.title = @"Автостоянка на ул. Дементьева, 70в";
    annotationK86.subtitle = @"Дементьева, 70в";
    annotationK86.coordinate = CLLocationCoordinate2DMake(55.86159751652741, 49.10680532455444);
    [array addObject:annotationK86];
    
    Annotation *annotationK87 = [Annotation new];
    annotationK87.title = @"Автостоянка на проспекте Победы, 190а";
    annotationK87.subtitle = @"Победы проспект, 190а";
    annotationK87.coordinate = CLLocationCoordinate2DMake(55.792819538209635, 49.2213249206543);
    [array addObject:annotationK87];
    
    Annotation *annotationK88 = [Annotation new];
    annotationK88.title = @"Автостоянка, ООО Автомир";
    annotationK88.subtitle = @"Фатыха Амирхана, 48 к5";
    annotationK88.coordinate = CLLocationCoordinate2DMake(55.83133644958792, 49.13358449935913);
    [array addObject:annotationK88];
    
    Annotation *annotationK89 = [Annotation new];
    annotationK89.title = @"Автостоянка на Минской, 48/1";
    annotationK89.subtitle = @"Минская, 48/1";
    annotationK89.coordinate = CLLocationCoordinate2DMake(55.77168506838644, 49.24039006233215);
    [array addObject:annotationK89];
    
    Annotation *annotationK90 = [Annotation new];
    annotationK90.title = @"Автостоянка на ул. Академика Глушко, 10в";
    annotationK90.subtitle = @"Академика Глушко, 10в";
    annotationK90.coordinate = CLLocationCoordinate2DMake(55.78132762157862, 49.237107038497925);
    [array addObject:annotationK90];
    
    Annotation *annotationK91 = [Annotation new];
    annotationK91.title = @"Автостоянка на ул. Патриса Лумумбы, 64/1";
    annotationK91.subtitle = @"Патриса Лумумбы, 64/1";
    annotationK91.coordinate = CLLocationCoordinate2DMake(55.79500292070867, 49.19212102890015);
    [array addObject:annotationK91];
    
    Annotation *annotationK92 = [Annotation new];
    annotationK92.title = @"Автостоянка, ООО Скат";
    annotationK92.subtitle = @"Газовая, 17/1";
    annotationK92.coordinate = CLLocationCoordinate2DMake(55.77028494994114, 49.14790749549866);
    [array addObject:annotationK92];
    
    Annotation *annotationK93 = [Annotation new];
    annotationK93.title = @"Автостоянка на Ломжинской, 2/1";
    annotationK93.subtitle = @"Ломжинская, 2/1";
    annotationK93.coordinate = CLLocationCoordinate2DMake(55.765969613401985, 49.222151041030884);
    [array addObject:annotationK93];
    
    Annotation *annotationK94 = [Annotation new];
    annotationK94.title = @"Автостоянка на ул. Закиева, 17ж";
    annotationK94.subtitle = @"Закиева, 17ж";
    annotationK94.coordinate = CLLocationCoordinate2DMake(55.77682041713589, 49.230605363845825);
    [array addObject:annotationK94];
    
    Annotation *annotationK95 = [Annotation new];
    annotationK95.title = @"Автостоянка на ул. Лукина, 3Б";
    annotationK95.subtitle = @"ул. Лукина, 3Б";
    annotationK95.coordinate = CLLocationCoordinate2DMake(55.85747896357824, 49.08809423446655);
    [array addObject:annotationK95];
    
    Annotation *annotationK96 = [Annotation new];
    annotationK96.title = @"Платная парковка, Вахитовский район";
    annotationK96.subtitle = @"Островского, 22";
    annotationK96.coordinate = CLLocationCoordinate2DMake(55.78765010333934, 49.116525650024414);
    [array addObject:annotationK96];
    
    Annotation *annotationK97 = [Annotation new];
    annotationK97.title = @"На Парковой, автостоянка";
    annotationK97.subtitle = @"Парковая, 22Б";
    annotationK97.coordinate = CLLocationCoordinate2DMake(55.85886390583609, 49.22244071960449);
    [array addObject:annotationK97];
    
    Annotation *annotationK98 = [Annotation new];
    annotationK98.title = @"Гриф, автостоянка";
    annotationK98.subtitle = @"Ямашева проспект, 11а";
    annotationK98.coordinate = CLLocationCoordinate2DMake(55.82609981043473, 49.09622669219971);
    [array addObject:annotationK98];
    
    Annotation *annotationK99 = [Annotation new];
    annotationK99.title = @"Автостоянка на Ноксинском спуске, 26а";
    annotationK99.subtitle = @"Ноксинский Спуск, 26а";
    annotationK99.coordinate = CLLocationCoordinate2DMake(55.76761130821207, 49.24204230308533);
    [array addObject:annotationK99];
    
    Annotation *annotationK100 = [Annotation new];
    annotationK100.title = @"Автостоянка, ЗАО Такпо";
    annotationK100.subtitle = @"Академика Парина, 12/1";
    annotationK100.coordinate = CLLocationCoordinate2DMake(55.74657186162419, 49.1852867603302);
    [array addObject:annotationK100];
    
    
//кал
}
@end
