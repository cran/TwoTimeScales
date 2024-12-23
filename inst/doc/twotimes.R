## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  eval = FALSE
)

## -----------------------------------------------------------------------------
#  library(TwoTimeScales)

## -----------------------------------------------------------------------------
#  dt2ts <- prepare_data(data = reccolon2ts,
#                        u = "timer",
#                        s_out = "timesr",
#                        events = "status",
#                        ds = 30, du = 30)

## -----------------------------------------------------------------------------
#  mod1 <- fit2ts(data2ts = dt2ts,
#                 Bbases_spec = list(bdeg = 3,
#                                    nseg_s = 20,
#                                    min_s = 0,
#                                    max_s = 2730,
#                                    nseg_u = 20,
#                                    min_u = 0,
#                                    max_u = 2300),
#                 lrho = c(2, 0),
#                 pord = 2,
#                 optim_method = "ucminf",
#                 optim_criterion = "aic")

## -----------------------------------------------------------------------------
#  mod2 <- fit2ts(data2ts = dt2ts,
#                 Bbases_spec = list(bdeg = 3,
#                                    nseg_s = 20,
#                                    min_s = 0,
#                                    max_s = 2730,
#                                    nseg_u = 20,
#                                    min_u = 0,
#                                    max_u = 2300),
#                 lrho = c(2, 0),
#                 pord = 2,
#                 optim_method = "ucminf",
#                 optim_criterion = "bic")
#  

## -----------------------------------------------------------------------------
#  mod3 <- fit2ts(data2ts = dt2ts,
#                 Bbases_spec = list(bdeg = 3,
#                                    nseg_s = 20,
#                                    min_s = 0,
#                                    max_s = 2730,
#                                    nseg_u = 20,
#                                    min_u = 0,
#                                    max_u = 2300),
#                 optim_method = "grid_search",
#                 optim_criterion = "aic",
#                 lrho = list(seq(-1, 3, by = .2),
#                             seq(-1, 3, by = .2)),
#                 par_gridsearch = list(
#                   plot_aic = TRUE,
#                   plot_bic = TRUE,
#                   mark_optimal = TRUE,
#                   plot_contour = TRUE
#                 ))

## -----------------------------------------------------------------------------
#  mod_LMM <- fit2ts(data2ts = dt2ts,
#                    Bbases_spec = list(bdeg = 3,
#                                       nseg_s = 20,
#                                       min_s = 0,
#                                       max_s = 2730,
#                                       nseg_u = 20,
#                                       min_u = 0,
#                                       max_u = 2300),
#                    pord = 2,
#                    optim_method = "LMMsolver",
#                    optim_criterion = "aic")

## -----------------------------------------------------------------------------
#  dt2ts_cov <- prepare_data(data = reccolon2ts,
#                            u = "timer",
#                            s_out = "timesr",
#                            events = "status",
#                            ds = 30,
#                            individual = TRUE,
#                            covs = c("rx", "sex", "adhere", "obstruct", "node4"))

## -----------------------------------------------------------------------------
#  mod_cov <- fit2ts(data2ts = dt2ts_cov,
#                    Bbases_spec = list(bdeg = 3,
#                                       nseg_s = 20,
#                                       min_s = 0,
#                                       max_s = 2730,
#                                       nseg_u = 20,
#                                       min_u = 0,
#                                       max_u = 2300),
#                    pord = 2,
#                    optim_method = "ucminf",
#                    optim_criterion = "aic")

## -----------------------------------------------------------------------------
#  dt2tsLex <- prepare_data(data = reccolon2ts,
#                           t_in = "timer",
#                           t_out = "timedc",
#                           s_out = "timesr",
#                           events = "status",
#                           ds = 30, dt = 30)
#  fields::image.plot(dt2tsLex$bins$midt,
#                     dt2tsLex$bins$mids,
#                     dt2tsLex$bindata$R,
#                     main = "Exposure",
#                     xlab = "time since randomization",
#                     ylab = "time since recurrence",
#                     col = c("white", rev(viridis::plasma(20))))
#  abline(a=0,b=1)
#  box()

