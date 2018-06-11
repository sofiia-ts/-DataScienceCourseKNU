# -DataScienceCourseKNU

Лабораторна робота № 1
В лабораторній роботі необхідно виконати наступні дії:
1. Створити змінні базових (atomic) типів. Базові типи: character, numeric,
integer, complex, logical.
2. Створити вектори, які: містить послідовність з 5 до 75; містить числа 3.14,
2.71, 0, 13; 100 значень TRUE.
3. Створити наступну матрицю за допомогою matrix, та за допомогою cbind
або rbind
0.5 1.3 3.5
3.9 131 2.8
0 2.2 4.6
2 7 5.1
4. Створити довільний список (list), в який включити всі базові типи.
5. Створити фактор з трьома рівнями «baby», «child», «adult».
6. Знайти індекс першого значення NA в векторі 1, 2, 3, 4, NA, 6, 7, NA, 9, NA,
11. Знайти кількість значень NA.
7. Створити довільний data frame та вивести в консоль.
8. Змінити імена стовпців цього data frame.
#Створити змінні базових (atomic) типів
  
  v1<-"Text"  
  class(v1)
  v2<- 1.5  
  class(v2)
  v3<- 1L  
  class(v3)
  v4<-1+2i 
  class(v4)
  v5<-TRUE 
  class(v5)
  
#Створити вектори.
  
  vc1<-5:75
  vc2<-c(3.14,2.71,0,13)
  vc3<-rep(TRUE, 100)

#Створити матрицю
 
  #matrix
  m<-list(0.5,3.9,0,2,1.3,131,2.2,7,3.5,2.8,4.6,5.1)
  dim(m)<-c(4,3)
  
  #cbind
  x<-list(0.5,3.9,0,2)
  y<-list(1.3,131,2.2,7)
  z<-list(3.5,2.8,4.6,5.1)
  cbind(x,y,z)
  
  #rbind
  x<-list(0.5,1.3,3.5)
  y<-list(3.9,131,2.8)
  z<-list(0,2.2,4.6)
  t<-list(2,7,5.1)
  rbind(x,y,z,t)
  
#Створити довільний список (list), в який включити всі базові типи
  
  l<-list("Text",1.1,1L,4+2i,FALSE)

#Створити фактор з трьома рівнями «baby», «child», «adult»
  
  fvc<-c("baby","child","child","adult","adult","adult")
  f <- factor(fvc, levels = c("baby","child","adult"))
  f

#Знайти індекс першого значення NA в векторі. Знайти кількість значень NA
  
  vc<-c(1,2,3,4,NA,6,7,NA,9,NA,11)
  min(which(is.na(vc)))
  length(which(is.na(vc)))

#Створити довільний data frame та вивести в консоль
  
  df <- data.frame(int = 1:3, bool = c(T, F, T))
  df

#Змінити імена стовпців цього data frame.
  
  names(df)<- c("integer","boolean")
  df
  
> #Створити змінні базових (atomic) типів
>   
>   v1<-"Text"  
>   class(v1)
[1] "character"
>   v2<- 1.5  
>   class(v2)
[1] "numeric"
>   v3<- 1L  
>   class(v3)
[1] "integer"
>   v4<-1+2i 
>   class(v4)
[1] "complex"
>   v5<-TRUE 
>   class(v5)
[1] "logical"
>   
> #Створити вектори.
>   
>   vc1<-5:75
>   vc2<-c(3.14,2.71,0,13)
>   vc3<-rep(TRUE, 100)
> 
> #Створити матрицю
>  
>   #matrix
>   m<-list(0.5,3.9,0,2,1.3,131,2.2,7,3.5,2.8,4.6,5.1)
>   dim(m)<-c(4,3)
>   
>   #cbind
>   x<-list(0.5,3.9,0,2)
>   y<-list(1.3,131,2.2,7)
>   z<-list(3.5,2.8,4.6,5.1)
>   cbind(x,y,z)
     x   y   z  
[1,] 0.5 1.3 3.5
[2,] 3.9 131 2.8
[3,] 0   2.2 4.6
[4,] 2   7   5.1
>   
>   #rbind
>   x<-list(0.5,1.3,3.5)
>   y<-list(3.9,131,2.8)
>   z<-list(0,2.2,4.6)
>   t<-list(2,7,5.1)
>   rbind(x,y,z,t)
  [,1] [,2] [,3]
x 0.5  1.3  3.5 
y 3.9  131  2.8 
z 0    2.2  4.6 
t 2    7    5.1 
>   
> #Створити довільний список (list), в який включити всі базові типи
>   
>   l<-list("Text",1.1,1L,4+2i,FALSE)
> 
> #Створити фактор з трьома рівнями «baby», «child», «adult»
>   
>   fvc<-c("baby","child","child","adult","adult","adult")
>   f <- factor(fvc, levels = c("baby","child","adult"))
>   f
[1] baby  child child adult adult adult
Levels: baby child adult
> 
> #Знайти індекс першого значення NA в векторі. Знайти кількість значень NA
>   
>   vc<-c(1,2,3,4,NA,6,7,NA,9,NA,11)
>   min(which(is.na(vc)))
[1] 5
>   length(which(is.na(vc)))
[1] 3
> 
> #Створити довільний data frame та вивести в консоль
>   
>   df <- data.frame(int = 1:3, bool = c(T, F, T))
>   df
  int  bool
1   1  TRUE
2   2 FALSE
3   3  TRUE
> 
> #Змінити імена стовпців цього data frame.
>   
>   names(df)<- c("integer","boolean")
>   df
  integer boolean
1       1    TRUE
2       2   FALSE
3       3    TRUE  
  
