# Use official Python image as base
FROM python:3

COPY ..

# Run Django commands
RUN python manage.py migrate

# Expose port (default Django port)
EXPOSE 8000

# Command to run the server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

#MY Project
