figaax009<-function(){
#
require(LSD)
#
# The following function duplicates daltonize but does print
# the two main title lines in daltonize.
#
my.daltonize<-function (colpal, cvd = "p", show = TRUE) 
{
    cvdtransform = switch(cvd, p = matrix(data = c(0, 2.02344, 
        -2.52581, 0, 1, 0, 0, 0, 1), nrow = 3, ncol = 3, byrow = TRUE), 
        d = matrix(data = c(1, 0, 0, 0.494207, 0, 1.24827, 0, 
            0, 1), nrow = 3, ncol = 3, byrow = TRUE), t = matrix(data = c(1, 
            0, 0, 0, 1, 0, -0.395913, 0.801109, 0), nrow = 3, 
            ncol = 3, byrow = TRUE))
    rgbvec = colorpalette(colpal)
    rgbmat = col2rgb(rgbvec)
    rgb2lms = matrix(data = c(17.8824, 43.5161, 4.11935, 3.45565, 
        27.1554, 3.86714, 0.0299566, 0.184309, 1.46709), nrow = 3, 
        ncol = 3, byrow = TRUE)
    lmsmat = rgb2lms %*% rgbmat
    simmat = cvdtransform %*% lmsmat
    lms2rgb = solve(rgb2lms)
    simrgbmat = lms2rgb %*% simmat
    simrgbmat = apply(simrgbmat, c(1, 2), function(x) {
        if (x > 255) {
            return(255)
        }
        else if (x < 0) {
            return(0)
        }
        else return(x)
    })
    simpal = apply(round(simrgbmat), 2, function(x) {
        rgb(x[1], x[2], x[3], maxColorValue = 255)
    })
    errormat = rgbmat - simrgbmat
    adjustmat = matrix(data = c(0, 0, 0, 0.7, 1, 0, 0.7, 0, 0), 
        nrow = 3, ncol = 3, byrow = TRUE)
    compensationmat = adjustmat %*% errormat
    enhancedrgbmat = compensationmat + rgbmat
    enhancedrgbmat = apply(enhancedrgbmat, c(1, 2), function(x) {
        if (x > 255) {
            return(255)
        }
        else if (x < 0) {
            return(0)
        }
        else return(x)
    })
    enhancedpal = apply(enhancedrgbmat, 2, function(x) {
        rgb(x[1], x[2], x[3], maxColorValue = 255)
    })
    testlmsmat = rgb2lms %*% enhancedrgbmat
    testsimmat = cvdtransform %*% testlmsmat
    testsimrgbmat = lms2rgb %*% testsimmat
    testsimrgbmat = apply(testsimrgbmat, c(1, 2), function(x) {
        if (x > 255) {
            return(255)
        }
        else if (x < 0) {
            return(0)
        }
        else return(x)
    })
    testsimpal = apply(round(testsimrgbmat), 2, function(x) {
        rgb(x[1], x[2], x[3], maxColorValue = 255)
    })
    if (show) {
        nr = length(rgbvec)
        linsimmat = apply(simrgbmat/255, c(1, 2), function(x) {
            if (x <= 0.04045) 
                return(x/12.92)
            else return(((x + 0.055)/(1 + 0.055))^(2.4))
        })
        rgb2xyz = matrix(data = c(0.4124564, 0.3575761, 0.1804375, 
            0.2126729, 0.7151522, 0.072175, 0.0193339, 0.119192, 
            0.9503041), nrow = 3, ncol = 3, byrow = TRUE)
        simxyzmat = rgb2xyz %*% linsimmat
        x = 0.312713
        y = 0.329016
        z = 1 - x - y
        xn = x/y
        yn = 1
        zn = z/y
        sqfkt = function(x) {
            if (x > (6/29)^3) 
                return(x^(1/3))
            else return((1/3) * (29/6)^2 * x + (4/29))
        }
        simLabmat = apply(simxyzmat, 2, function(x) {
            L = 116 * sqfkt(x[2]/yn) - 16
            a = 500 * (sqfkt(x[1]/xn) - sqfkt(x[2]/yn))
            b = 200 * (sqfkt(x[2]/yn) - sqfkt(x[3]/zn))
            return(c(L, a, b))
        })
        euclids = c()
        for (i in 1:nr) {
            diffmat = simLabmat - simLabmat[, i]
            euclids = c(euclids, apply(diffmat[, setdiff(1:nr, 
                i), drop = FALSE], 2, function(x) {
                return(sqrt(sum(x^2)))
            }))
        }
        euclids = unique(euclids)
        Epds = min(euclids)/sqrt(100^2 + (2 * 128)^2 + (2 * 128)^2)
        npal = 4
        plot(1, 1, xlim = c(0, nr), ylim = c(0, npal * 2), type = "n", 
            axes = FALSE, bty = "n", xlab = "", ylab = "", main = "")
        rect(xleft = 0:(nr - 1), ybottom = 1 - 1, xright = 1:nr, 
            ytop = 1 - 0.2, col = testsimpal, border = NA)
        rect(xleft = 0, ybottom = 1 - 1, xright = nr, ytop = 1 - 
            0.2, col = "transparent", border = "darkgrey")
        rect(xleft = 0:(nr - 1), ybottom = 3 - 1, xright = 1:nr, 
            ytop = 3 - 0.2, col = enhancedpal, border = NA)
        rect(xleft = 0, ybottom = 3 - 1, xright = nr, ytop = 3 - 
            0.2, col = "transparent", border = "darkgrey")
        rect(xleft = 0:(nr - 1), ybottom = 5 - 1, xright = 1:nr, 
            ytop = 5 - 0.2, col = simpal, border = NA)
        rect(xleft = 0, ybottom = 5 - 1, xright = nr, ytop = 5 - 
            0.2, col = "transparent", border = "darkgrey")
        rect(xleft = 0:(nr - 1), ybottom = 7 - 1, xright = 1:nr, 
            ytop = 7 - 0.2, col = rgbvec, border = NA)
        rect(xleft = 0, ybottom = 7 - 1, xright = nr, ytop = 7 - 
            0.2, col = "transparent", border = "darkgrey")
        cvdtype = switch(cvd, p = "protanope", d = "deuteranope", 
            t = "tritanope")
        text(rep(nr/2, npal), c(8, 6, 4, 2) - 0.6, labels = c(paste("Original colors"), 
            paste("Simulated colors as seen by", cvdtype, "individuals"), 
            paste("Enhanced colors for", cvdtype, "individuals"), 
            paste("Enhanced colors as seen by", cvdtype, 
                "individuals")))
 #       mtext(paste("Euclidean perception difference score (Epds):", 
 #           signif(Epds, 1)), 3, 2, cex = 1.25)
 #       mtext(paste("( should be >= 0.01 for sufficient perception differences )"), 
 #           3, 0, col = "darkgrey")
    }
    return(list(simulated = simpal, enhanced = enhancedpal))
}

graphics.off()
windows(width=4.5,height=4.5,pointsize=12)
par(fin=c(4.45,4.45),pin=c(4.45,4.45))

my.daltonize("standardterrain",cvd = "d")

dev.copy2eps(file="figaax009.eps",pointsize=12,colormodel="cmyk")
dev.copy2pdf(file="figaax009.pdf",pointsize=12,out.type="pdf",colormodel="cmyk")
}

