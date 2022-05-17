FROM python

WORKDIR /app
# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt .

ENV DB_URL=terraform-20220517021529623000000001.cl4yvaj4rs7c.us-west-2.rds.amazonaws.com
ENV ACCESS_KEY=AKIA4CGYFQL4RSYQVLMI
ENV SECRET_KEY=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
#this runs when image is built
RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000 

ENTRYPOINT [ "python" ,"app.py" ] 
