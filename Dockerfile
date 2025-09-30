# Verwende das offizielle n8n Docker Image
FROM n8nio/n8n:latest

# Exponiere den Port 5678
EXPOSE 5678

# Das offizielle Image startet n8n automatisch
# Keine zusätzlichen CMD-Befehle nötig
