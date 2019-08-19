figaax007<-function(){
#
require(dichromat)
#
# The following function duplicates filled.contour but does not have
# horizontal black lines in the key.
#
my.filled.contour <- function (x = seq(0, 1, length.out = nrow(z)), y = seq(0, 1, 
    length.out = ncol(z)), z, xlim = range(x, finite = TRUE), 
    ylim = range(y, finite = TRUE), zlim = range(z, finite = TRUE), 
    levels = pretty(zlim, nlevels), nlevels = 20, color.palette = cm.colors, 
    col = color.palette(length(levels) - 1), plot.title, plot.axes, 
    key.title, key.axes, asp = NA, xaxs = "i", yaxs = "i", las = 1, 
    axes = TRUE, frame.plot = axes, ...) 
{
    if (missing(z)) {
        if (!missing(x)) {
            if (is.list(x)) {
                z <- x$z
                y <- x$y
                x <- x$x
            }
            else {
                z <- x
                x <- seq.int(0, 1, length.out = nrow(z))
            }
        }
        else stop("no 'z' matrix specified")
    }
    else if (is.list(x)) {
        y <- x$y
        x <- x$x
    }
    if (any(diff(x) <= 0) || any(diff(y) <= 0)) 
        stop("increasing 'x' and 'y' values expected")
    mar.orig <- (par.orig <- par(c("mar", "las", "mfrow")))$mar
    on.exit(par(par.orig))
    w <- (3 + mar.orig[2L]) * par("csi") * 2.54

#    layout(matrix(c(2, 1), ncol = 2L), widths = c(1, lcm(w)))

    layout(matrix(c(2, 1), ncol = 2L), widths = c(1,0.40))

    par(las = las)
    mar <- mar.orig
    mar[4L] <- mar[2L]
    mar[2L] <- 1
    par(mar = mar)
    plot.new()
    plot.window(xlim = c(0, 1), ylim = range(levels), xaxs = "i", 
        yaxs = "i")
    rect(0, levels[-length(levels)], 1, levels[-1L], col = col, border=NA)
    if (missing(key.axes)) {
        if (axes) 
            axis(4)
    }
     else key.axes
    box()
    if (!missing(key.title)) 
        key.title
    mar <- mar.orig
    mar[4L] <- 1
    par(mar = mar)
    plot.new()
    plot.window(xlim, ylim, "", xaxs = xaxs, yaxs = yaxs, asp = asp)
    .filled.contour(x, y, z, levels, col)
    if (missing(plot.axes)) {
        if (axes) {
            title(main = "", xlab = "", ylab = "")
            Axis(x, side = 1)
            Axis(y, side = 2)
        }
    }
    else plot.axes
    if (frame.plot) 
        box()
    if (missing(plot.title)) 
        title(...)
    else plot.title
    invisible()
}

graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45),mar=c(5.1,4.1,4.1,2.1))

x <- 10*1:ncol(volcano)
y <- 10*1:nrow(volcano)
z <- t(volcano)[ncol(volcano):1,1:nrow(volcano)]

my.filled.contour(x, y, z, 
    col = dichromat(terrain.colors(100),type="tritan"), nlevels=100,
    plot.title = title(main = "Topography of Maungawhau",
    xlab = "East (m)", ylab = "North (m)", cex.lab=0.8, cex.main=0.8),
    plot.axes = { axis(1, seq(100, 800, by = 100),cex.axis=0.8)
                  axis(2, seq(100, 600, by = 100),cex.axis=0.8) }, cex.axis=0.8,
    key.title = title(main = "\n(m)",cex.main=0.8),
    key.axes = axis(4, seq(90, 200, by = 10),cex.axis=0.8))

dev.copy2eps(file="figaax007.eps",pointsize=10,colormodel="cmyk")
dev.copy2pdf(file="figaax007.pdf",pointsize=10,out.type="pdf",colormodel="cmyk")
}
