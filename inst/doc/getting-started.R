## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  eval = FALSE
)

## -----------------------------------------------------------------------------
# library(imf.data)
# 
# datasets <- list_datasets("IMF.STA")
# datasets[datasets$id == "CPI", ]

## -----------------------------------------------------------------------------
# dimensions <- list_dimensions("CPI")
# dimensions

## -----------------------------------------------------------------------------
# list_dimension_values(
#   "CPI",
#   "FREQUENCY",
#   filters = list(COUNTRY = "USA")
# )

## -----------------------------------------------------------------------------
# cpi <- get_data(
#   "CPI",
#   filters = list(
#     COUNTRY = c("USA", "CAN"),
#     INDEX_TYPE = "CPI",
#     COICOP_1999 = "_T",
#     TYPE_OF_TRANSFORMATION = "IX",
#     FREQUENCY = "M"
#   ),
#   start_period = "2020",
#   last_n_obs = 12,
#   attributes = c("SCALE", "STATUS")
# )
# cpi

## -----------------------------------------------------------------------------
# wide <- reshape(
#   cpi[c("COUNTRY", "TIME_PERIOD", "OBS_VALUE")],
#   idvar = "TIME_PERIOD",
#   timevar = "COUNTRY",
#   direction = "wide"
# )
# wide[order(wide$TIME_PERIOD), ]

## -----------------------------------------------------------------------------
# tryCatch(
#   get_data(
#     "CPI",
#     filters = list(COUNTRY = "USA"),
#     first_n_obs = 1,
#     last_n_obs = 1
#   ),
#   error = function(e) conditionMessage(e)
# )

## -----------------------------------------------------------------------------
# raw <- sdmx_data(
#   "CPI",
#   key = "USA.CPI._T.IX.M",
#   last_n_obs = 2
# )
# 
# availability <- sdmx_availability(
#   "CPI",
#   component_id = "FREQUENCY",
#   filters = list(COUNTRY = "USA"),
#   mode = "available"
# )
# 
# metadata <- sdmx_metadata(detail = "allstubs")

## -----------------------------------------------------------------------------
# set_imf_proxy(
#   "http://proxy.example.com",
#   port = 8080,
#   username = Sys.getenv("PROXY_USER"),
#   password = Sys.getenv("PROXY_PASSWORD")
# )

## -----------------------------------------------------------------------------
# clear_imf_proxy()

