#Base Image
FROM centos:lastest
#Setup Context
WORKDIR /FLASKWEBAPPPROJ
#Setup Entrypoint
ENTRYPOINT ["python"]
#Copy
COPY requirements.txt requirements.txt
#Install Dependencies
RUN pip install -r requirements.txt
#Expose
EXPOSE  5000
#CMD
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0", "app.py"]

