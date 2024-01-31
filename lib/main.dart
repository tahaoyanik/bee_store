
import 'package:flutter/material.dart';



                                                                
                                                               //fonksiyon oluşturur
void main(){                                                   //what this function will make in this area

  print("The function has been worked");
  islem(SelamlamaMetni, sayi);
 
                                        
  runApp(   MyApp()                                                    //flutter olması için gerekli fonksiyon,widget vermek zorundayız
                                                               
   
  );
}




//Değişken tanımlamak
String SelamlamaMetni = "Merhabalar.";

int sayi = 5;


void islem(String SelamlamaMetni, int sayi){
  for (int i = 0; i < sayi; i++){
    print(SelamlamaMetni);
  }
}



class MyApp extends StatelessWidget{
  
  MyApp({super.key});

  @override

  Widget build(BuildContext context) {


    return  MaterialApp(                                                //uygulama mimarisi veriyor
      debugShowCheckedModeBanner: false,                                    
      home:Scaffold(                                                    //scaffold sayfa mimarisi veriyor
        drawer: const Drawer(), //yan menü                                        
        appBar: AppBar(
          title: const Text( "Home"),
          centerTitle:false,
          
          actions: [                                            //liste şeklinde eleman alır,tıklanabilir buton
              
              IconButton(
                icon: Image.asset('varliklar/bag.png',
                width: 24.5,
                height: 24.5,

                ),
                onPressed: (){},
                
            ),
              
            IconButton(
                icon:Image.asset('varliklar/notification.png',
                width: 24.5, 
                height: 24.5,
                ),  

                onPressed: () {},

            ),  
          ],                            

        ),
        
        
        body:Column(
          children: [
            SizedBox(height: 24),
            Padding(
              padding:EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search Anything..",
                  prefixIcon: Image.asset('varliklar/searchbar/search.png'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 5,
                    ),
                  ),
                ),
              ),
            ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              Text("Categories",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0.11,
                letterSpacing: 0.07,

              ),
            ),
              
              Spacer(), // row içinde boşluk bırakır
              
              Text(
                "Wiev All ->",
                textAlign: TextAlign.right,
                style: TextStyle(
                  color:Colors.grey,
                  fontSize: 12,
                  fontFamily: 'Intern',
                  fontWeight: FontWeight.w400,
                  height:0.9,
                ),
              ),   
            ],
          ),
        ),
      
        SizedBox(height: 16), 
      
      Padding(
        padding: const EdgeInsets.all(.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child:Row(
            
            children: [
              for (int i = 0; i < 150; i++)
                Column(
                  children: [
                    
                    if (i % 2 == 0)
                      Image.asset('varliklar/Vector.png')
                    else
                      Image.asset('varliklar/Frame.png'),  
                    Padding(
                      padding: const EdgeInsets.all(16.05),
                      child: Text(i % 2==0 ? "Electronic" : "Fashion",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
              
                        
                  ),
                ),
              ),
            ],
          ),  
        ],
      ),
    

    ),  
  ), 
  
 ],
), 
        
      

    

      



    ),
    
   );
  }
}

 
      


//sınıf oluşturmak

class insan {
  String isim;
  String soyisim;

  int yas;

  double kilo;

  bool askerlikYaptiMi;

  List<int> okuldaGecenYillar = [2013, 2014, 2015, 2016];

    //fonksiyon tanımla
    // oluşturucu (consruction) fonksiyonu aynı zamanda

  insan(this.isim, this.soyisim, this.yas, this.kilo, this.okuldaGecenYillar, this.askerlikYaptiMi){ //parametre vermek zorundayız yoksa sınıf oluşmaz

    print("insan sinifi oluşturuldu.");
  
  }
}


class Ogrenci extends insan { //extends diyerek önceden tanımladığımız claası dahil ediyoruz. 

  String OgrenciNo;
  String OkulIsmi;


  Ogrenci(
    super.isim,
    super.soyisim,
    super.yas,
    super.kilo,
    super.okuldaGecenYillar,
    super.askerlikYaptiMi,
    this.OkulIsmi, 
    this.OgrenciNo){

    print("Öğrenci oluşturuldu.");
   
  }



  
}

    // yazdığımız sınıfı kullanalım
insan Taha = insan("Taha"," oyanik", 25, 75, [2012, 2013,2014], false);

