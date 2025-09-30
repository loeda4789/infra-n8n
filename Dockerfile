# Verwende das offizielle n8n Docker Image
FROM n8nio/n8n:latest

# Setze den Arbeitsverzeichnis
WORKDIR /home/node

# Erstelle das n8n Verzeichnis falls es nicht existiert
RUN mkdir -p /home/node/.n8n

# Setze die Berechtigungen für den node Benutzer
RUN chown -R node:node /home/node/.n8n

# Wechsle zum node Benutzer
USER node

# Exponiere den Port 5678
EXPOSE 5678

# Starte n8n direkt (das offizielle Image hat n8n bereits installiert)
CMD ["node", "/usr/local/lib/node_modules/n8n/bin/n8n", "start"]
