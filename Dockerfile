FROM python:3.7.3-stretch

## STEP 1: Make a working directory
WORKDIR /app


## STEP 2: Copy source to working directory
COPY . app.py /app/


## STEP 3: Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

## STEP 4: Expose port 80
EXPOSE 80


## STEP 5: Run app.py at container launch
CMD ["python", "app.py"]

