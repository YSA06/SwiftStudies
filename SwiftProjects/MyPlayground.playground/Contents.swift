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


// Dictionary

let meyveDizisi=["Armut","muz","elma","karrpuz"]
let kaloriDizisi=[100,150,120,300]

meyveDizisi[2]
kaloriDizisi[2]

var meyveKaloriDictinory=["Armut":100, "Muz": 150, "Elma": 120,"Karpuz":300]

meyveKaloriDictinory["Armut"]
meyveKaloriDictinory.keys
meyveKaloriDictinory.values

meyveKaloriDictinory["Muz"] = 200


//Loops (Donguler)

var x = 0

x += 1

x = 0

print("dongu basladı")
while x < 10 {
    print(x)
    x += 1
}
print("dongu bitti")

//For Loop

var myArray=["Atıl","Mahmut","Mehmet","Zeynep"]

for isim in myArray{
    print(isim.uppercased())
}

var numaraDizisi=[10,20,30,40,50,60,70,80,90]

for num in numaraDizisi {
    print(num / 5*3)
}

// If Kontrolleri (If Statments) Eger

var benimYasim = 100

if benimYasim < 20 {
    print("cok gençsin")
} else if benimYasim > 20 && benimYasim < 30 {
    print("yirmili yaslarındasın")
} else if benimYasim > 30 && benimYasim < 40 {
    print("otuzlu yaslarındasın")
}else {
    print ("kırk yasından buyuksun")
}

//func
func carpma (a: Int, b: Int)-> Int {
    return a * b
}

var carpmaSonucu = carpma(a: 5, b: 8)
print(carpmaSonucu)

func logicFunction(x: Int, y: Int) -> Bool{
    if x > y {
        return true
    }else{
        return false
    }
}
logicFunction(x: 1, y: 3)



