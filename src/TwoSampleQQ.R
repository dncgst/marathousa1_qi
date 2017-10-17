# TwoSampleQQ

#"The angular QQ-plot is proposed by Fisher (1993) as an alternative graphical
#means of comparing the distributional shape of two samples; but not any
#differences in their central directions, as both samples are centred around
#their median directions in the construction of the plot" (Pewsey, A.;
#Neuhauser, M. & Ruxton, G. D. Circular Statistics in R Oxford University Press,
#2013, p.132)

# http://circstatinr.st-andrews.ac.uk/
# http://circstatinr.st-andrews.ac.uk/resources/Chap7-RCommands.txt

# cdat1 and cdat2 are assumed to be circular data objects containing angles
# measured counterclockwise from the mathematical zero direction in radians in
# (-pi,pi]

TwoSampleQQ <- function(cdat1, cdat2) {
  n1 <- length(cdat1) ; n2 <- length(cdat2) ; nmin <- min(n1,n2) ; nmax <- max(n1,n2)
  cdatref <- cdat1 ; cdatoth <- cdat2 
  if (n2 < n1) { cdatref <- cdat2 ; cdatoth <- cdat1 }
  zref <- sin(0.5*(cdatref-median.circular(cdatref))) ; szref <- sort(zref)
  zoth <- sin(0.5*(cdatoth-median.circular(cdatoth))) ; szoth <- sort(zoth)
  koth <- 0 ; szothred <- 0 ; szreffin <- 0
  for (k in 1:nmin) { koth[k] <- 1+nmax*(k-0.5)/nmin ; szothred[k] <- szoth[koth[k]] ; szreffin[k] <- szref[k]}
  par(mai=c(0.90, 0.9, 0.05, 0.1), cex.axis=1.2, cex.lab=1.5)
  plot(szreffin, szothred, pch=16, xlim=c(-1,1), ylim=c(-1,1), xlab = "Smaller sample", ylab = "Larger sample")
  xlim <- c(-1,1) ; ylim <- c(-1,1) ; lines(xlim, ylim, lwd=2, lty=2)
}