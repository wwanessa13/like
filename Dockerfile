FROM rstudio/plumber

COPY exemplo_api.R /exemplo_api.R

EXPOSE 8000

CMD ["Rscript", "/exemplo_api.R"]
