import UIKit



var ilkDizimiz=["Yavuz", "Selim","Yumak","Yulaf","Lily"]

ilkDizimiz[4].uppercased()

ilkDizimiz[2]="Tilly"
ilkDizimiz[2]

var ikinciDizimiz=[10,20,30,40]

ikinciDizimiz[3] * 5 / 10


var karisikDizimiz = [100,200,"Yumak",true,false] as [Any]

var yeniDegisken = karisikDizimiz[2] as! String
karisikDizimiz.append("Yulaf")

karisikDizimiz.count


var HARFLER=["a","c","b","f","d","z","y"]
HARFLER.sort()


var sayilar=[1,3,5,8,2,7,10,11,4]
sayilar.sort()

//set

var numaraSeti : Set = [1,1,1,1,2,3,4,5,6]
numaraSeti.remove(3)
numaraSeti

var siparislerDizisi =  ["Istanbul,Ankara,Ankara,Ankara,Izmır,Istanbul,Istanbul,Istanbul,Istanbul "]
    siparislerDizisi.count

var siparislerSeti=Set (siparislerDizisi)
siparislerSeti.count

let birinciSet : Set  = [40,50,60]
let ikinciSet : Set = [50,60,70]

let birlesimSeti = birinciSet.union(ikinciSet)

