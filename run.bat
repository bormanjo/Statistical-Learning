docker build -t r_stat_dev ./dev_tools/
docker run -it -d -e ROOT=TRUE -e PASSWORD=rstudio -p 8787:8787 -v "%cd%":/home/rstudio/ r_stat_dev 
start chrome --new-window "http://localhost:8787"