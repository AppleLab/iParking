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
    
    Annotation *annotationK8 = [Annotation new];
    annotationK8.title = @"РК «Ривьера»";
    annotationK8.subtitle = @"Пр.Амирхана, 1а";
    annotationK8.coordinate = CLLocationCoordinate2DMake(55.815377264876545, 49.130001068115234);
    [array addObject:annotationK8];
    Annotation *annotationA8 = [Annotation new];
    annotationA8.title = @"ТРК «Пирамида»";
    annotationA8.subtitle = @"ул.Московская, 3";
    annotationA8.coordinate = CLLocationCoordinate2DMake(55.794791825535846 , 49.10321116447449);
    [array addObject:annotationA8];
    
    Annotation *annotationK9 = [Annotation new];
    annotationK9.title = @"РК «Ривьера»";
    annotationK9.subtitle = @"Пр.Амирхана, 1б";
    annotationK9.coordinate = CLLocationCoordinate2DMake(55.81573895031542, 49.127211570739746);
    [array addObject:annotationK9];
    Annotation *annotationA9 = [Annotation new];
    annotationA9.title = @"Центральный стадион";
    annotationA9.subtitle = @"ул.Ташаяк, 2а";
    annotationA9.coordinate = CLLocationCoordinate2DMake(55.796757981984776, 49.096269607543945);
    [array addObject:annotationA9];
    
    Annotation *annotationK10 = [Annotation new];
    annotationK10.title = @"ТК «Новинка»";
    annotationK10.subtitle = @"Ул.Короленко, 28";
    annotationK10.coordinate = CLLocationCoordinate2DMake(55.829926422790344, 49.10264253616333);
    [array addObject:annotationK10];
    Annotation *annotationA10 = [Annotation new];
    annotationA10.title = @"Гранд «Отель Казань»";
    annotationA10.subtitle = @"ул.Петербургская, 1";
    annotationA10.coordinate = CLLocationCoordinate2DMake(55.78646169986234, 49.1243040561676);
    [array addObject:annotationA10];
    
    Annotation *annotationK11 = [Annotation new];
    annotationK11.title = @"Ново-Савиновский рынок";
    annotationK11.subtitle = @"Ул.Адоратского, 21";
    annotationK11.coordinate = CLLocationCoordinate2DMake(55.83013130165304, 49.14540767669678);
    [array addObject:annotationK11];
    Annotation *annotationA11 = [Annotation new];
    annotationA11.title = @"ТЦ «Бэхетле»";
    annotationA11.subtitle = @"ул.Павлюхина, 57";
    annotationA11.coordinate = CLLocationCoordinate2DMake(55.77447006827832, 49.13863241672516);
    [array addObject:annotationA11];
    
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
    Annotation *annotationA12 = [Annotation new];
    annotationA12.title = @"«Центральный рынок г.Казани»";
    annotationA12.subtitle = @"Ул.М.Межлаука, 13";
    annotationA12.coordinate = CLLocationCoordinate2DMake(55.78644661836699, 49.10843074321747);
    [array addObject:annotationA12];
    
    Annotation *annotationK14 = [Annotation new];
    annotationK14.title = @"Розничный рынок «Караваево»";
    annotationK14.subtitle = @"Ул.Дементьева, 72";
    annotationK14.coordinate = CLLocationCoordinate2DMake(55.86188050048004, 49.10846829414368);
    [array addObject:annotationK14];
    Annotation *annotationA13 = [Annotation new];
    annotationA13.title = @"Гостиница «Татарстан»";
    annotationA13.subtitle = @"Ул.Пушкина, 4";
    annotationA13.coordinate = CLLocationCoordinate2DMake(55.78650091172291, 49.122474789619446);
    [array addObject:annotationA13];
    
    Annotation *annotationK15 = [Annotation new];
    annotationK15.title = @"ТРК «Парк Хаус»";
    annotationK15.subtitle = @"пр.Ямашева, 46";
    annotationK15.coordinate = CLLocationCoordinate2DMake(55.829468454371394, 49.11807060241699);
    [array addObject:annotationK15];
    Annotation *annotationA14 = [Annotation new];
    annotationA14.title = @"Чеховский рынок";
    annotationA14.subtitle = @"Ул.Чехова. 2";
    annotationA14.coordinate = CLLocationCoordinate2DMake(55.789580427655686, 49.147692918777466);
    [array addObject:annotationA14];
    
    Annotation *annotationK16 = [Annotation new];
    annotationK16.title = @"ТК «Бэхетле»";
    annotationK16.subtitle = @"пр.Ямашева, 71а";
    annotationK16.coordinate = CLLocationCoordinate2DMake(55.82622636583872, 49.13536548614502);
    [array addObject:annotationK16];
    Annotation *annotationA15 = [Annotation new];
    annotationA15.title = @"«Сити-центр»";
    annotationA15.subtitle = @"Ул.Парина, 3";
    annotationA15.coordinate = CLLocationCoordinate2DMake(55.74469677773677, 49.19453501701355);
    [array addObject:annotationA15];
    
    Annotation *annotationK17 = [Annotation new];
    annotationK17.title = @"Центральный стадион";
    annotationK17.subtitle = @"Ул.Ташаяк, 2а";
    annotationK17.coordinate = CLLocationCoordinate2DMake(55.796866539878586, 49.0989089012146);
    [array addObject:annotationK17];
    Annotation *annotationA16 = [Annotation new];
    annotationA16.title = @"ТД «Олимп»";
    annotationA16.subtitle = @"Ул.Р.Зорге, 70";
    annotationA16.coordinate = CLLocationCoordinate2DMake(55.74673188876475, 49.212881326675415);
    [array addObject:annotationA16];
    
    Annotation *annotationK18 = [Annotation new];
    annotationK18.title = @"Чеховский рынок";
    annotationK18.subtitle = @"Ул.Ташаяк, 2а";
    annotationK18.coordinate = CLLocationCoordinate2DMake(55.789574395541194, 49.14776802062988);
    [array addObject:annotationK18];
    Annotation *annotationA17 = [Annotation new];
    annotationA17.title = @"«Евроинтерьер»";
    annotationA17.subtitle = @"Ул.Р.Зорге, 82";
    annotationA17.coordinate = CLLocationCoordinate2DMake(55.7454697700952, 49.21507000923157);
    [array addObject:annotationA17];
    
    Annotation *annotationK19 = [Annotation new];
    annotationK19.title = @"Двор дома №56 по ул.Баумана, въезд с ул.Островского";
    annotationK19.subtitle = @"Ул.Баумана, 56";
    annotationK19.coordinate = CLLocationCoordinate2DMake(55.790491266225246, 49.11492705345154);
    [array addObject:annotationK19];
    Annotation *annotationA18 = [Annotation new];
    annotationA18.title = @"Центральный дом мебели";
    annotationA18.subtitle = @"Ул.Тукая, 115";
    annotationA18.coordinate = CLLocationCoordinate2DMake(55.76673011297474, 49.12569880485535);
    [array addObject:annotationA18];
    
    Annotation *annotationK20 = [Annotation new];
    annotationK20.title = @"Проезжая часть ул.Тихомирного";
    annotationK20.subtitle = @"ул.Тихомирного от ул.Эсперанто до ул.Калинина";
    annotationK20.coordinate = CLLocationCoordinate2DMake(55.778310808824294, 49.143197536468506);
    [array addObject:annotationK20];
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

    Annotation *annotationK21 = [Annotation new];
    annotationK21.title = @"Территория Речного порта";
    annotationK21.subtitle = @"Ул.Девятаева, 1";
    annotationK21.coordinate = CLLocationCoordinate2DMake(55.773326522521, 49.091506004333496);
    [array addObject:annotationK21];
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
    
    Annotation *annotationK22 = [Annotation new];
    annotationK22.title = @"Территория перед заводом «Серп и Молот»";
    annotationK22.subtitle = @"ул.Кл.Цеткин 8, кол-во мест: 440";
    annotationK22.coordinate = CLLocationCoordinate2DMake(55.799871, 49.06422);
    [array addObject:annotationK22];
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
    annotationA31.subtitle = @"просп. Ибрагимова, 56";
    annotationA31.coordinate = CLLocationCoordinate2DMake(55.82133259038037, 49.09342646598816);
    [array addObject:annotationA31];
    
    Annotation *annotationK25 = [Annotation new];
    annotationK25.title = @"прилегающая территория стадиона «Мирас»";
    annotationK25.subtitle = @"ул.Ак.Глушко, Дж.Файзи, кол-во мест: 34  ";
    annotationK25.coordinate = CLLocationCoordinate2DMake(55.7910522356732, 49.228620529174805);
    [array addObject:annotationK25];
    
    Annotation *annotationA32 = [Annotation new];
    annotationA32.title = @"ТК «Южный», Мегастрой";
    annotationA32.subtitle = @"проспект Победы, 109";
    annotationA32.coordinate = CLLocationCoordinate2DMake(55.772415282621516, 49.21720504760742);
    [array addObject:annotationA32];
    
    Annotation *annotationK26 = [Annotation new];
    annotationK26.title = @"прилегающая территория СК «Центр бокса»";
    annotationK26.subtitle = @"ул.Ак.Глушко, Дж.Файзи, кол-во мест: 31 ";
    annotationK26.coordinate = CLLocationCoordinate2DMake(55.79047317030209, 49.228148460388184);
    [array addObject:annotationK26];
    
    Annotation *annotationA33 = [Annotation new];
    annotationA33.title = @"Мегастрой, Агава";
    annotationA33.subtitle = @"ул Азинская 2-я, 7";
    annotationA33.coordinate = CLLocationCoordinate2DMake(55.800876938848695, 49.20900821685791);
    [array addObject:annotationA33];
    
    Annotation *annotationK27 = [Annotation new];
    annotationK27.title = @"прилегающая территория СК «Ак Буре»";
    annotationK27.subtitle = @"улица Рашида Вагапова 17, кол-во мест:31";
    annotationK27.coordinate = CLLocationCoordinate2DMake(55.78403048742547, 49.23145294189453);
    [array addObject:annotationK27];
    
    Annotation *annotationA34 = [Annotation new];
    annotationA34.title = @"ТЦ «Азино»";
    annotationA34.subtitle = @"Ул.Минская, 9";
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
    annotationA35.subtitle = @"Ул.Сибирский тракт, 34";
    annotationA35.coordinate = CLLocationCoordinate2DMake(55.81792104780794, 49.1828727722168 );
    [array addObject:annotationA35];
   
    Annotation *annotationA36 = [Annotation new];
    annotationA36.title = @"ТРЦ «Франт»";
    annotationA36.subtitle = @"Ул.Фучика, 90";
    annotationA36.coordinate = CLLocationCoordinate2DMake(55.76346468848582, 49.23324465751648  );
    [array addObject:annotationA36];

    Annotation *annotationA37 = [Annotation new];
    annotationA37.title = @"Регистрационная палата";
    annotationA37.subtitle = @"Ул.Авангардная-Кулагина, 74";
    annotationA37.coordinate = CLLocationCoordinate2DMake(55.74088896297058,  49.14430260658264 );
    [array addObject:annotationA37];
    
    Annotation *annotationK30 = [Annotation new];
    annotationK30.title = @"Центр покупок ООО «Ринго»";
    annotationK30.subtitle = @"Ул.Чистопольская 7, кол-во мест: 40";
    annotationK30.coordinate = CLLocationCoordinate2DMake(55.820320008253084, 49.10446643829346);
    [array addObject:annotationK30];
    Annotation *annotationA38 = [Annotation new];
    annotationA38.title = @"Торговые ряды «Алтын»";
    annotationA38.subtitle = @"Ул.Марселя Салимжанова, 5";
    annotationA38.coordinate = CLLocationCoordinate2DMake(55.78138795545146, 49.12470102310181  );
    [array addObject:annotationA38];
    
    Annotation *annotationK31 = [Annotation new];
    annotationK31.title = @"ООО «Мебель-град»";
    annotationK31.subtitle = @"Ул.Рахимова 8, кол-во мест: 117";
    annotationK31.coordinate = CLLocationCoordinate2DMake(55.84036784460572, 49.03098464012146);
    [array addObject:annotationK31];
    Annotation *annotationA39 = [Annotation new];
    annotationA39.title = @"ТЦ «Ягодная слобода»";
    annotationA39.subtitle = @"Ул.Краснококшайская, 150/2";
    annotationA39.coordinate = CLLocationCoordinate2DMake(55.817776382148196, 49.06425476074219 );
    [array addObject:annotationA39];

    Annotation *annotationK32 = [Annotation new];
    annotationK32.title = @"Автосалон ООО «ТрансТехСервис»";
    annotationK32.subtitle = @"Пр.Ибрагимова 48, кол-во мест: 80";
    annotationK32.coordinate = CLLocationCoordinate2DMake(55.823244671368315, 49.093879759311676);
    [array addObject:annotationK32];
    Annotation *annotationA40 = [Annotation new];
    annotationA40.title = @"ТЦ «Петрушка»";
    annotationA40.subtitle = @"Ул.Адмиралтейская, 3";
    annotationA40.coordinate = CLLocationCoordinate2DMake(55.800617632307564, 49.05348300933838 );
    [array addObject:annotationA40];
    
    Annotation *annotationK33 = [Annotation new];
    annotationK33.title = @"Автосалон ООО «РРТ-Казань»";
    annotationK33.subtitle = @"Ул.Восстания 131, кол-во мест: 50";
    annotationK33.coordinate = CLLocationCoordinate2DMake(55.829304247276255, 49.04767334461212);
    [array addObject:annotationK33];
    Annotation *annotationA41 = [Annotation new];
    annotationA41.title = @"Мебельный универсальный магазин";
    annotationA41.subtitle = @"Ул.Лазарева, 7";
    annotationA41.coordinate = CLLocationCoordinate2DMake(55.81953644447354, 49.0504789352417 );
    [array addObject:annotationA41];
    
    Annotation *annotationK34 = [Annotation new];
    annotationK34.title = @"ТЦ «Саборг»";
    annotationK34.subtitle = @"Ул.Лушникова 10, кол-во мест: 40";
    annotationK34.coordinate = CLLocationCoordinate2DMake(55.81949425213002, 49.08371150493622);
    [array addObject:annotationK34];
    Annotation *annotationA42 = [Annotation new];
    annotationA42.title = @"ТЦ «Факел»";
    annotationA42.subtitle = @"Ул.Горьковское шоссе, 47";
    annotationA42.coordinate = CLLocationCoordinate2DMake(55.82634086799229, 49.026339054107666 );
    [array addObject:annotationA42];

    Annotation *annotationA43 = [Annotation new];
    annotationA43.title = @"Автосалон «Акос»";
    annotationA43.subtitle = @"Ул.Горьковское шоссе, 49";
    annotationA43.coordinate = CLLocationCoordinate2DMake(55.826714504254426, 49.02342081069946 );
    [array addObject:annotationA43];
    
    Annotation *annotationK35 = [Annotation new];
    annotationK35.title = @"Гипермаркет «М.Видео»";
    annotationK35.subtitle = @"Ул.Декабристов 79, кол-во мест: 150";
    annotationK35.coordinate = CLLocationCoordinate2DMake(55.81745238939662, 49.093434512615204);
    [array addObject:annotationK35];
    Annotation *annotationA44 = [Annotation new];
    annotationA44.title = @"Автосалон ООО «Парус»";
    annotationA44.subtitle = @"Ул.Кожевенная, 28";
    annotationA44.coordinate = CLLocationCoordinate2DMake(55.803831705381604, 49.067344665527344 );
    [array addObject:annotationA44];

//кал
}
@end
