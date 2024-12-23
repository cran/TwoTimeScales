## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  eval = FALSE,
  fig.align = 'center'
)

## -----------------------------------------------------------------------------
#  library(TwoTimeScales)

## -----------------------------------------------------------------------------
#  str(reccolon2ts)

## -----------------------------------------------------------------------------
#  dt1ts <- prepare_data(data = reccolon2ts,
#                        s_out = "timesr",
#                        events = "status",
#                        ds = 30)

## -----------------------------------------------------------------------------
#  dt2ts <- prepare_data(data = reccolon2ts,
#                        u = "timer",
#                        s_out = "timesr",
#                        events = "status",
#                        ds = 30)

## -----------------------------------------------------------------------------
#  dt2ts_cov <- prepare_data(data = reccolon2ts,
#                            u = "timer",
#                            s_in = "entrys",
#                            s_out = "timesr",
#                            events = "status",
#                            ds = 30,
#                            individual = TRUE,
#                            covs = c("rx", "node4", "sex"))

## -----------------------------------------------------------------------------
#  m1ts <- fit1ts(data1ts = dt1ts,
#                 Bbases_spec = list(bdeg = 3,
#                                    nseg_s = 20,
#                                    min_s = 0,
#                                    max_s = 2730))

## -----------------------------------------------------------------------------
#  m2ts <- fit2ts(data2ts = dt2ts,
#                 Bbases_spec = list(bdeg = 3,
#                                    nseg_s = 20,
#                                    min_s = 0,
#                                    max_s = 2730,
#                                    nseg_u = 16,
#                                    min_u = 0,
#                                    max_u = 2300))

## -----------------------------------------------------------------------------
#  plot(x = m1ts,
#       plot_grid = c("smin" = 0, "smax" = 2730, "ds" = 10),
#       plot_options= list(
#         col = "darkblue",
#         main = "Hazard",
#         ylab = "hazard",
#         xlab = "time since recurrence",
#         cex_main = 1))

## -----------------------------------------------------------------------------
#  plot(x = m2ts,
#       plot_grid = list(c("umin" = 0, "umax" = 2300, "du" = 10),
#                        c("smin" = 0, "smax" = 2730, "ds" = 10)),
#       plot_options= list(
#         main = "Bi-dimensional hazard",
#         ylab = "time since recurrence",
#         xlab = "time since randomization",
#         cex_main = 1))

