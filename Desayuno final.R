#Tarea final desayuno

#Vamos a preparar un desayuno con ciertas funciones para lo cual necesitaremos
#diversas materias primas (input) para llevar a cabo las acciones.

#Def: Dada ciertas condiciones de las materias primas (input)
# obtendremos los productos para confeccionar el desayuno.

#Las materias primas son:
#palta, naranjas, pan, cafe, harina, huevos y sarten.

#Las acciones son:
#Calentar: String->String
#Ejemplo: Calentar("cafe")->"cafe Caliente"
#Preparar: String->String
#Ejemplo: Preparar("naranjas cortadas")->"jugo de naranjas"
#Rellenar: String->String
#Ejemplo: Rellenar("panqueques")->"panqueques con manjar"
#Moler: String->String
#Ejmplo: Moler("palta cortada")->"palta molida"
#Cortar: String->String
#Ejemplo: Cortar("pan")->"pan cortado"
#CalentarSarten: String->String
#Ejemplo: CalentarSarten(sarten)->"sarten caliente"
#Servir: String->String
#Ejmplo:Servir("pan tostado con palta" && 
#"panqueques con manjar" && 
#"jugo de naranjas" &&
#"cafe caliente")->"mmmmm... niami... el desayuno esta maravilloso"

Calentar <- function(x){
  if(x=="cafe"){
    return("cafe caliente")
  }else if(x=="pan cortado"){
    return("pan tostado")
  }else{
    return(paste("No se que hacer con ",x))
  }
}

Preparar <- function(x,y){
  if(x=="naranjas cortadas"){
    return("jugo de naranjas")
  }else if((x=="harina" && y=="huevos")||(y=="harina" && x=="huevos")){
    return("masa de panqueques")
  }else if((x=="masa de panqueques" && y=="sarten caliente")||(y=="masa de panqueques" && x=="sarten caliente")){
    return("panqueques")
  }else if((x=="pan tostado" && y=="palta molida")||(y=="pan tostado" && x=="palta molida")){
    return("pan tostado con palta")
  }else{
    return("faltan elementos")  
  }
}

Rellenar <- function(x){
  if(x=="panqueques"){
    return("panqueques con manjar")
  }else{
    return(paste("No se que hacer con ",x)) 
  }
}

Moler <- function(x){
  if(x=="palta cortada"){
    return("palta molida")
  }else{
    return(paste("No se que hacer con ",x))
  }
}

Cortar <- function(x){
  if(x=="pan"){
    return("pan cortado")
  }else if(x=="naranjas"){
    return("naranjas cortadas")
  }else if(x=="palta"){
    return("palta cortada")
  }else{
    return(paste("No se que hacer con ",x))
  }
}

CalentarSarten <- function(x){
  if (x=="sarten"){
    return("sarten caliente")
  }else{
    return(paste("No se que hacer con",x)) 
  }
}

Servir <- function(x,y,z,j){
  if((x=="pan tostado con palta" && y=="panqueques con manjar" && z=="jugo de naranjas" && j=="cafe caliente")){
    return("mmmmm... niami... el desayuno esta maravilloso")
  }else{
    return("iiiuuuu... esto no esta listo")
  }
}

#Test
#Para preparar un desayuno caliente, se realizara el siguiente procedimiento:

# Paso 1: Cortar los elementos requeridos
NaranjasCortadas<-Cortar("naranjas")
PanCortado<-Cortar("pan")
PaltaCortada<-Cortar("palta")

# Paso 2: Preparar jugo, palta y masa panqueques 
JugoDeNaranjas<-Preparar(NaranjasCortadas)
PaltaMolida<-Moler(PaltaCortada)
MasaDePanqueques<-Preparar("harina","huevos")

# Paso 3: Preparar panqueques
SartenCaliente<-CalentarSarten("sarten")
Panqueques<-Preparar(MasaDePanqueques,SartenCaliente)
PanquequesConManjar<-Rellenar(Panqueques)

# Paso 4: Preparar tostadas
PanTostado<-Calentar(PanCortado)
PanTostadoConPalta<-Preparar(PanTostado,PaltaMolida)

# Paso 5: Preparar café
CafeCaliente<-Calentar("cafe")

# Paso 6: Servir el desayuno
Servir(PanTostadoConPalta,PanquequesConManjar,JugoDeNaranjas,CafeCaliente)

