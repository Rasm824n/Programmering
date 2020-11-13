// Find og ret fejlen
// programmet beregner hvad kartofler koster og udskriver prisen

// konstant moms
float moms = 1.25;
int prisudenMoms;  
int antal = 200;
int pris = 3;
float prisMedMoms;
float kgpris = 22.33;

void setup(){
  size(100,100);
  noLoop();
}

void draw(){
  // beregn pris
  prisudenMoms = beregnPris(antal, pris);
  // beregn moms
  prisMedMoms = beregnMoms(prisudenMoms, moms);
  // udskriv bon
  udskrivBon(prisudenMoms, prisMedMoms, kgpris, antal);

}

// beregner pris fra antal * kilo og retrurnerer samlet pris
int beregnPris(int antal, int pris){
  return antal * pris;
}

// beregner moms og returnerer pris med moms
float beregnMoms(float pris, float moms){
 return pris*moms;
}

//udskriver en kasseBon til consol
void udskrivBon(float prisUdenMoms, float prisMedMoms, float kgpris, int antal){
 moms = 25;
 println("kg pris: ",kgpris);
 println("antal kartolfer",antal);
 println("ialt uden moms",prisUdenMoms);
 println("momsbeløb: ",prisUdenMoms - prisMedMoms," =",moms+"%");
 println("ialt med moms",prisMedMoms);
}
