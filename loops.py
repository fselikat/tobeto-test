for i in range(10):
    print(i)

biggestValue=0
for i in range(5):
    sayi=int(input(f"{i}. sayıyı giriniz. "))
    if sayi>biggestValue:
        biggestValue=sayi

print(f"Girdiğiniz sayılar arasında en büyük olan {biggestValue}")

forRangeMin=int(input("Döngünün alt limitini belirleyiniz"))
forRangeMax=int(input("Döngünün üst limitini belirleyiniz"))

for i in range (forRangeMin, forRangeMax+i):
    if i % 2==0:
        print(i)

sayilar=[]

for i in range(5):
    sayilar.append(int(input(f"{i+1}. sayıyı giriniz. ")))

sayilar.sort(reverse=True)
print(sayilar)


ogrenciler = ["Güneş", "Recep", "Betül", "Yunus", "İrem"]
print(len(ogrenciler))

for i in range(len(ogrenciler)):
    print(f"{i+1}. öğrenci: {ogrenciler[i]}")

for ogrenci in ogrenciler:
    print(f"Öğrenci: {ogrenci}")

for i in range(len(ogrenciler)):
    if i>3:
        break
    print(f"{i+1}. öğrenci: {ogrenciler[i]}")

for ogrenci in ogrenciler:
    if ogrenci==ogrenciler:
        continue
    print(f"Öğrenci: {ogrenci}")

i=0
while i<10:
    print("Merhaba")
    i+=1
    
