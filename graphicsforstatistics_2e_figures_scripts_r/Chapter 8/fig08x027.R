fig08x027<-function(){
#
require(ggplot2)
require(ggmosaic)
#
graphics.off()
windows(width=4.5,height=4.5)
#
haireye<-matrix(data=c(68,15,5,20,119,54,29,
84,26,14,14,17,7,10,16,94),
nrow=4,ncol=4,byrow=TRUE,
dimnames=list(c("Black","Brunette","Red","Blond"),
c("Brown","Hazel","Green","Blue")))
#
haircol<-unlist(dimnames(haireye)[1])
eyecol<-unlist(dimnames(haireye)[2])
#
hair<-rep(" ",16)
eye<-rep(" ",16)
freq<-rep(0,16)
#
n=0
#
for (i in 1:4){ for (j in 1:4){
n<-n+1
hair[n]<-haircol[i]
eye[n]<-eyecol[j]
freq[n]<-haireye[i,j]
}}
#
haireyemf<-data.frame(hair=hair,eye=eye,freq=freq)
#
figure<-ggplot(haireyemf,aes(weight=freq,
x=product(factor(eye,levels=rev(eyecol),ordered=TRUE)),
fill=factor(hair,levels=rev(haircol),ordered=TRUE)))+
geom_mosaic(show.legend=FALSE,alpha=1)+
#
# If colors for fill are manually set by a subsequent
# call to scale_fill_manual then when saving the
# ggmosaic figure to an .eps file the mosaic will
# not be saved due to an issue with transparency
# which is not support by R in for .eps files.
# Setting alpha=1 forces there to be no use of
# color transparency in the mosaic figure produced
# by the ggmosaic function geom_mosaic
#
theme(panel.background=element_blank(),
panel.grid=element_blank(),
axis.ticks=element_blank())+
scale_y_continuous(breaks=c(0.25,0.475,0.7,0.95),
label=(rev(c("Black","Brunette","Red","Blond"))))+
labs(x="",y="")+
scale_fill_manual(values=rev(c("black","brown",
"red","gold")))
#
print(figure)
#
dev.copy2eps(file="fig08x027.eps",colormodel="cmyk")
dev.copy2pdf(file="fig08x027.pdf",colormodel="cmyk")
}

