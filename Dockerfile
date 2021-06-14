FROM rocker/shiny:latest

# 복사
copy /App ./app

#RUN Rscript -e 'install.packages("shiny")'		# FROM rocker/shiny:latest이용시 기본 적으로 설치 되어 있음 
#RUN Rscript -e 'install.packages("shinydashboard")'

RUN Rscript -e 'install.packages("httr")'

EXPOSE 3838

CMD ["R", "-e", "shiny::runApp('/app', host = '0.0.0.0', port = 3838)"]