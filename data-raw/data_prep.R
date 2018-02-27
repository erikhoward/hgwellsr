## This script is used to download files from Project Gutenberg and
## add them to the hgwellsr package

library(gutenbergr)
timemachine <- gutenberg_download(35)$text
timemachine <- timemachine[9:length(timemachine)]
waroftheworlds <- gutenberg_download(36)$text
waroftheworlds <- waroftheworlds[19:length(waroftheworlds)]
doctormoreau <- gutenberg_download(159)$text
doctormoreau <- doctormoreau[48:length(doctormoreau)]
annveronica <- gutenberg_download(524)$text
annveronica <- annveronica[44:length(annveronica)]
mrpolly <- gutenberg_download(7308)$text
mrpolly <- mrpolly[9:length(mrpolly)]
invisibleman <- gutenberg_download(5230)$text
invisibleman <- invisibleman[44:length(invisibleman)]

## Add data files to project
devtools::use_data(timemachine, overwrite = TRUE)
devtools::use_data(waroftheworlds, overwrite = TRUE)
devtools::use_data(doctormoreau, overwrite = TRUE)
devtools::use_data(annveronica, overwrite = TRUE)
devtools::use_data(mrpolly, overwrite = TRUE)
devtools::use_data(invisibleman, overwrite = TRUE)
