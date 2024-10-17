FROM python:3.12

WORKDIR /usr/src/app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the rest of your application
COPY . .

EXPOSE 5000

# Set the default command to run main.py
CMD ["python", "app2.py"]