FROM python:3.13-slim
WORKDIR /HW3
COPY . .
RUN pip install -r requirements.txt
EXPOSE 8000
CMD ["fastapi", "run", "extract_save_data.py", "--port", "8000", "--host", "0.0.0.0"]