## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  eval = FALSE
)

## -----------------------------------------------------------------------------
#  library(TwoTimeScales)

## -----------------------------------------------------------------------------
#  plot(mod)

## ----original, fig = TRUE, dependson="load-mod", fig.width=6, fig.align='center', fig.height=9----
#  par(mfrow = c(2,1),
#      font.main = 1)
#  plot(mod,
#       plot_options = list(
#         rectangular_grid = TRUE,               # for grid of rectangles
#         original = TRUE,                       # for plot in (t,s)-plane
#         main = "Original plane - rectangular grid",
#         xlab = "Time since randomization",
#         ylab = "Time since recurrence"
#       ))
#  plot(mod,
#       plot_options = list(
#         rectangular_grid = F,                # for grid of parallelograms
#         original = TRUE,                        # for plot in (t,s)-plane
#         main = "Original plane - grid of parallelograms",
#         xlab = "Time since randomization",
#         ylab = "Time since recurrence"
#       ))
#  par(mfrow = c(1,1))

## -----------------------------------------------------------------------------
#  plot(mod,
#       plot_grid = list(c(umin = 0, umax = 2300, du = 10),
#                        c(smin = 0, smax = 2730, du = 10)),
#       plot_options = list(n_shades = 100,
#                           main = "Denser plotting grid",
#                           xlab = "Time at recurrence",
#                           ylab = "Time since recurrence"))

## -----------------------------------------------------------------------------
#  par(mfrow = c(2,1),
#      font.main = 1)
#  plot(mod,
#       plot_options = list(
#         loghazard = TRUE,
#         main = "Log-hazard (u,s)",
#         xlab = "Time at recurrence",
#         ylab = "Time since recurrence"
#       ))
#  plot(mod,
#       plot_options = list(
#         original = TRUE,
#         loghazard = TRUE,
#         main = "Log-hazard (t,s)",
#         xlab = "Time since randomization",
#         ylab = "Time since recurrence"
#       ))
#  par(mfrow = c(1,1))

## -----------------------------------------------------------------------------
#  par(mfrow = c(2,1),
#      font.main = 1)
#  plot(mod,
#       plot_options = list(
#         log10hazard = TRUE,
#         main = "Log10-hazard (u,s)",
#         xlab = "Time at recurrence",
#         ylab = "Time since recurrence"
#       ))
#  plot(mod,
#       plot_options = list(
#         original = TRUE,
#         log10hazard = TRUE,
#         main = "Log10-hazard (t,s)",
#         xlab = "Time since randomization",
#         ylab = "Time since recurrence"
#       ))
#  par(mfrow = c(1,1))

## -----------------------------------------------------------------------------
#  par(mfrow = c(2,1),
#      font.main = 1)
#  plot(mod,
#       plot_options = list(cut_extrapolated = TRUE,
#                           tmax = 3214,
#                           main = "Cut extrapolated hazard",
#                           xlab = "Time at recurrence",
#                           ylab = "Time since recurrence"))
#  
#  plot(mod,
#       plot_options = list(cut_extrapolated = TRUE,
#                           tmax = 3214,
#                           original = TRUE,
#                           main = "Cut extrapolated hazard",
#                           xlab = "Time since randomization",
#                           ylab = "Time since recurrence"))

## -----------------------------------------------------------------------------
#  mycol <- function(nshades){
#    colorspace::sequential_hcl(n = nshades, "Blues 3")
#  }
#  plot(mod,
#       plot_options = list(col_palette = mycol,
#                           main = "New colors",
#                           xlab = "Time at recurrence",
#                           ylab = "Time since recurrence",
#                           contour_col = "pink",
#                           contour_nlev = 20))

## -----------------------------------------------------------------------------
#  plot(mod,
#       which_plot = "SE",
#       plot_options = list(main = "Standard Errors of the hazard",
#                           xlab = "Time at recurrence",
#                           ylab = "Time since recurrence"))
#  
#  plot(mod,
#       which_plot = "SE",
#       plot_options = list(
#         loghazard = TRUE,
#         main = "Standard Errors of the log-hazard",
#         xlab = "Time at recurrence",
#         ylab = "Time since recurrence"))
#  
#  plot(mod,
#       which_plot = "SE",
#       plot_options = list(
#         log10hazard = TRUE,
#         main = "Standard Errors of the log10-hazard",
#         xlab = "Time at recurrence",
#         ylab = "Time since recurrence"))

## -----------------------------------------------------------------------------
#  plot(mod,
#       which_plot = "slices",
#       where_slices = c(30, 60, 90, 180, 365, 1000, 2000),
#       direction = "u",
#       plot_options = list(main = "Slices of the hazard",
#                           xlab = "Time since recurrence",
#                           ylab = "Hazard"))
#  legend("topright",
#         legend = c(30, 60, 90, 180, 365, 1000, 2000),
#         lty = 1,
#         col = grDevices::gray.colors(7))

## ----slices-s, fig = TRUE, chache = TRUE, dependson="load-mod", fig.width=6, fig.align='center', fig.height=4.5----
#  plot(mod,
#       which_plot = "slices",
#       where_slices = c(30, 60, 90, 180, 365, 1000, 2000),
#       direction = "s",
#       plot_options = list(main = "Slices of the hazard",
#                           xlab = "Time since randomization",
#                           ylab = "Hazard"))
#  legend("topright",
#         legend = c(30, 60, 90, 180, 365, 1000, 2000),
#         lty = 1,
#         col = grDevices::gray.colors(7))

## -----------------------------------------------------------------------------
#  mycol2 <- function(nshades){
#    colorspace::sequential_hcl(n = nshades, "PurpOr")
#  }
#  plot(mod,
#       which_plot = "survival",
#       plot_options = list(col_palette = mycol2,
#                           main = "Survival function",
#                           xlab = "Time at recurrence",
#                           ylab = "Time since recurrence",
#                          contour_nlev = 20))
#  
#  plot(mod,
#       which_plot = "survival",
#       where_slices = c(30, 60, 90, 180, 365, 1000, 2000),
#       direction = "u",
#       plot_options = list(
#                           surv_slices = TRUE,
#                           main = "Slices of the survival function",
#                           xlab = "Time since randomization",
#                           ylab = "Survival"))
#  legend(x = 3000, y = .9,
#         xpd = TRUE,
#         inset = c(-0.3,0),
#         legend = c(30, 60, 90, 180, 365, 1000, 2000),
#         lty = 1,
#         lwd = 2,
#         bty = "n",
#         title = "Time of\n recurrence",
#         col = grDevices::gray.colors(7))
#  

## -----------------------------------------------------------------------------
#  mycol3 <- function(nshades){
#    colorspace::sequential_hcl(n = nshades, "BluGrn")
#  }
#  plot(mod,
#       which_plot = "cumhaz",
#       plot_options = list(col_palette = mycol3,
#                           main = "Cumulative hazard",
#                           xlab = "Time at recurrence",
#                           ylab = "Time since recurrence",
#                           contour_nlev = 20))
#  
#  plot(mod,
#       which_plot = "cumhaz",
#       where_slices = c(30, 60, 90, 180, 365, 1000, 2000),
#       direction = "u",
#       plot_options = list(
#                           cumhaz_slices = TRUE,
#                           main = "Slices of the cumulative hazard",
#                           xlab = "Time since randomization",
#                           ylab = "Cumulative hazard"))
#  legend(x = 3000, y = 3.5,
#         xpd = TRUE,
#         inset = c(-0.3,0),
#         legend = c(30, 60, 90, 180, 365, 1000, 2000),
#         lty = 1,
#         lwd = 2,
#         bty = "n",
#         title = "Time of\n recurrence",
#         col = grDevices::gray.colors(7))

