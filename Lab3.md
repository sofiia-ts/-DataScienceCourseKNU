# -DataScienceCourseKNU

Лабораторна робота № 3
В лабораторній роботі необхідно написати наступні функції на мові R та вивести
результат роботи цих функцій на довільних даних:
1. Функція add2(x, y), яка повертає суму двох чисел.
2. Функція above(x, n), яка приймає вектор та число n, та повертає всі
елементі вектору, які більше n. По замовчуванню n = 10.
3. Функція my_ifelse(x, exp, n), яка приймає вектор x, порівнює всі його
елементи за допомогою exp з n, та повертає елементи вектору, які
відповідають умові expression. Наприклад, my_ifelse(x, “>”, 0) повертає всі
елементи x, які більші 0. Exp може дорівнювати “<”, “>”, “<=”, “>=”, “==”.
Якщо exp не співпадає ні з одним з цих виразів, повертається вектор x.
4. Функція columnmean(x, removeNA), яка розраховує середнє значення
(mean) по кожному стовпцю матриці, або data frame. Логічний параметр
removeNA вказує, чи видаляти NA значення. По замовчуванню він
дорівнює TRUE.

#add2

  add2<-function(x,y){
    x+y
  }
  add2(3,4)

#above
  
  above<-function(x,n=10){
    x[x>n]
  }
  above(c(1,13,2,10,11))

#my_ifelse
  
  my_ifelse<-function(x,exp,n){
    if (exp=="<") {
      if (length(x[x<n])==0){
        r<-x
      } else {
        r<-x[x<n]
      }
    }else if (exp==">"){
      if (length(x[x>n])==0){
        r<-x
      } else {
        r<-x[x>n]
      }
    }else if (exp=="<="){
      if (length(x[x<=n])==0){
        r<-x
      } else {
        r<-x[x<=n]
      }
    }else if (exp==">="){
      if (length(x[x>=n])==0){
        r<-x
      } else {
        r<-x[x>=n]
      }
    }else if (exp=="=="){
      if (length(x[x==n])==0){
        r<-x
      } else {
        r<-x[x==n]
      }
    }
    return(r)
  }
  
  my_ifelse(c(1,13,2,10,11),"<=",10)


#columnmean

  columnmean<-function(x,removeNA=T){
    apply(x,2,mean,na.rm=removeNA)}
  
  data<-data.frame(c1=1:4,c2=c(1, 2, NA, NA))
  columnmean(data)
  columnmean(data,F)
  
  #add2
> 
>   add2<-function(x,y){
+     x+y
+   }
>   add2(3,4)
[1] 7
> 
> #above
>   
>   above<-function(x,n=10){
+     x[x>n]
+   }
>   above(c(1,13,2,10,11))
[1] 13 11
> 
> #my_ifelse
>   
>   my_ifelse<-function(x,exp,n){
+     if (exp=="<") {
+       if (length(x[x<n])==0){
+         r<-x
+       } else {
+         r<-x[x<n]
+       }
+     }else if (exp==">"){
+       if (length(x[x>n])==0){
+         r<-x
+       } else {
+         r<-x[x>n]
+       }
+     }else if (exp=="<="){
+       if (length(x[x<=n])==0){
+         r<-x
+       } else {
+         r<-x[x<=n]
+       }
+     }else if (exp==">="){
+       if (length(x[x>=n])==0){
+         r<-x
+       } else {
+         r<-x[x>=n]
+       }
+     }else if (exp=="=="){
+       if (length(x[x==n])==0){
+         r<-x
+       } else {
+         r<-x[x==n]
+       }
+     }
+     return(r)
+   }
>   
>   my_ifelse(c(1,13,2,10,11),"<=",10)
[1]  1  2 10
> 
> 
> #columnmean
> 
>   columnmean<-function(x,removeNA=T){
+     apply(x,2,mean,na.rm=removeNA)}
>   
>   data<-data.frame(c1=1:4,c2=c(1, 2, NA, NA))
>   columnmean(data)
 c1  c2 
2.5 1.5 
>   columnmean(data,F)
 c1  c2 
2.5  NA 
