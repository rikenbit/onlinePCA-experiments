library("statmod")
library("pcaMethods")
library("fastICA")
library("matrixStats")
library("clValid") # connectivityの計算
library("mclust")
library("ggplot2")
library("reshape2")
library("ggbeeswarm")
library("RColorBrewer")
library("fields")
library("irlba")
library("scales")
library("RMTstat")
library("oocRPCA")
library("rARPACK")
library("RSpectra")
library("svd")
library("rsvd")
library("grid")
library("Rmisc")

normalize <- function(out){
    out <- log10(out + 1)
    m <- rowMeans(out)
    sweep(out, 1, m)
}

profilePRCOMP <- function(input, output1, output2, dim=30){
    out <- read.csv(input, header=FALSE)
    out <- normalize(out)
    out <- prcomp(out, scale=FALSE)
    write.table(t(out$rotation[,1:dim]), output1, quote=FALSE, row.names=FALSE, col.names=FALSE, sep=",")
    write.table(out$sdev[1:dim]^2, output2, quote=FALSE, row.names=FALSE, col.names=FALSE, sep=",")
}

profileIRLB <- function(input, output1, output2, dim=30){
    out <- read.csv(input, header=FALSE)
    out <- normalize(out)
    NC = ncol(out)
    out <- irlba(as.matrix(out), dim)
    write.table(t(out$v[,1:dim]), output1, quote=FALSE, row.names=FALSE, col.names=FALSE, sep=",")
    write.table(out$d[1:dim]^2/NC, output2, quote=FALSE, row.names=FALSE, col.names=FALSE, sep=",")
}

profilerARPACK <- function(input, output1, output2, dim=30){
    out <- read.csv(input, header=FALSE)
    out <- normalize(out)
    NC = ncol(out)
    out <- rARPACK::svds(as.matrix(out), dim)
    write.table(out$v[,1:dim], output1, quote=FALSE, row.names=FALSE, col.names=FALSE, sep=",")
    write.table(out$d[1:dim]^2/NC, output2, quote=FALSE, row.names=FALSE, col.names=FALSE, sep=",")
}

profileRSpectra <- function(input, output1, output2, dim=30){
    out <- read.csv(input, header=FALSE)
    out <- normalize(out)
    NC = ncol(out)
    out <- RSpectra::svds(as.matrix(out), dim)
    write.table(out$v[,1:dim], output1, quote=FALSE, row.names=FALSE, col.names=FALSE, sep=",")
    write.table(out$d[1:dim]^2/NC, output2, quote=FALSE, row.names=FALSE, col.names=FALSE, sep=",")
}

profilePROPACK <- function(input, output1, output2, dim=30){
    out <- read.csv(input, header=FALSE)
    out <- normalize(out)
    NC = ncol(out)
    out <- propack.svd(as.matrix(out), dim)
    write.table(out$v[,1:dim], output1, quote=FALSE, row.names=FALSE, col.names=FALSE, sep=",")
    write.table(out$d[1:dim]^2/NC, output2, quote=FALSE, row.names=FALSE, col.names=FALSE, sep=",")
}

profilersvd <- function(input, output1, output2, dim=30){
    out <- read.csv(input, header=FALSE)
    out <- normalize(out)
    NC = ncol(out)
    out <- rsvd(as.matrix(out), dim, q=3)
    write.table(out$v[,1:dim], output1, quote=FALSE, row.names=FALSE, col.names=FALSE, sep=",")
    write.table(out$d[1:dim]^2/NC, output2, quote=FALSE, row.names=FALSE, col.names=FALSE, sep=",")
}

profileoocRPCA <- function(input, m, n, output1, output2, dim=30){
    out <- oocPCA_CSV(input, k = dim, mem = 1e+10, its = 3, centeringRow = TRUE, logTransform = TRUE)
    NC = ncol(out$U)
    write.table(out$V[,1:dim], output1, quote=FALSE, row.names=FALSE, col.names=FALSE, sep=",")
    write.table(diag(out$S)[1:dim]^2/NC, output2, quote=FALSE, row.names=FALSE, col.names=FALSE, sep=",")
}

profileRefSVD <- function(input, output, dim=30){
    out = read.csv(input, header=FALSE)
    out = normalize(out)
    res.svd = svd(out)
    write.table(res.svd$u[, 1:dim], output, quote=FALSE, row.names=FALSE, col.names=FALSE, sep=",")
}
