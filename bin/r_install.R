repos <- getOption("repos")

if (Sys.info()["sysname"] == "Linux") {
  options(
    HTTPUserAgent =
      sprintf(
        "R/%s R (%s)",
        getRversion(),
        paste(getRversion(), R.version["platform"], R.version["arch"], R.version["os"])
      )
  )

  os_codename <- system2("lsb_release", "-cs", stdout = TRUE)
  repos <- file.path("https://packagemanager.rstudio.com/all/__linux__", os_codename, "latest")
}

install.packages(commandArgs(TRUE), repos = repos)
