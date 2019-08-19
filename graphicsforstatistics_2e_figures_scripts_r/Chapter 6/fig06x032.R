fig06x032<-function(){
mass<-c(5.9,32.0,40.0,51.5,70.0,100.0,78.0,80.0,85.0,85.0,
110.0,115.0,125.0,130.0,120.0,120.0,130.0,135.0,110.0,130.0,
150.0,145.0,150.0,170.0,225.0,145.0,188.0,180.0,197.0,218.0,
300.0,260.0,265.0,250.0,250.0,300.0,320.0,514.0,556.0,840.0,
685.0,700.0,700.0,690.0,900.0,650.0,820.0,850.0,900.0,1015.0,
820.0,1100.0,1000.0,1100.0,1000.0,1000.0)
#
graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),
mai=c(0.85,0.25,0.25,0.05),yaxs="r",bty="n")
#
massbp<-boxplot(mass,range=1.5,horizontal=TRUE,
xlab="Mass (g)",pars=list(boxwex=1.5),
lty=1,ylim=c(0.,1200.),yaxp=c(0.,1200.,6),
outline=TRUE,plot=FALSE)
#
m5<-massbp$stats
y<-200/5
p1<-cbind(c(m5[1],rep(m5[2],3),m5[3],rep(m5[4],2)),c(0,-y,y,rep(-y,3),0))
p2<-cbind(c(m5[2],rep(m5[4],2),m5[2],m5[3],m5[4],m5[5]),c(0,-y,rep(y,4),0))
#
sbp <- function(x,y) {
sigma <- 10
px<-x
py<-y
m<-7
#
temp<-0
#
for (i in 1:m) {
x1<-p1[i,1]
y1<-p1[i,2]
x2<-p2[i,1]
y2<-p2[i,2]
#
dxx <- x2 - x1
dyy <- y2 - y1
#
t <- ((px - x1)*dxx+(py - y1)*dyy)/(dxx*dxx+dyy*dyy)
#
     if (t <= 0.) 
        {
        nx <- x1
        ny <- y1
        }
     if (t >= 1.) 
         {
         nx <- x2
         ny <- y2
         }
     if ((t > 0.) & (t < 1.))
         {
          nx <- x1+t*dxx
          ny <- y1+t*dyy
         }
   dx <- px - nx
   dy <- py - ny
   temp<-temp+dnorm(sqrt(dx*dx+dy*dy),mean=0,sd=10)
}
temp/m
}
#
ngrid <-40
x<- -20 + (0:ngrid)*(1200/ngrid)
y<- -80 + (0:(ngrid))*(80/ngrid)*2

lx<- length(x)
ly <- length(y)

z<-matrix(0,nrow=lx,ncol=ly)

for (i in 1:lx) { for (j in 1:ly) {
z[i,j]=sbp(x[i],y[j])
}
}
#
persp(x,y,(z+z[,41:1])/2,theta=30,phi=45,xlim=c(-20,1200),ylim=c(-80,80),
zlab="f")
#
dev.copy2eps(file="fig06x032.eps")
dev.copy2pdf(file="fig06x032.pdf")
}

