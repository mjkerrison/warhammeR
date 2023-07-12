
all_tbl_names <- gsub(

  pattern = "\\.csv$",
  replacement = "",

  list.files("data-raw/", pattern = "\\.csv$")

)

all_csv_paths <- list.files("data-raw/",
                            pattern = "\\.csv$",
                            full.names = TRUE)

for(i in 1:length(all_tbl_names)){

  name_i <- all_tbl_names[i]
  tbl_i <- readr::read_csv(all_csv_paths[i])

  assign(name_i, tbl_i)

  do.call(usethis::use_data, list(as.name(name_i), overwrite = TRUE))

}
