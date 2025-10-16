FROM python:3.11-slim

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy code
COPY . .

# Expose API port
EXPOSE 5000

# Run both API and bot
CMD ["sh", "-c", "python3 api.py & python3 bot.py"]
