# Terraform Installation  

## Wie wird es verwendet?  

1. Kopiere den Inhalt der Datei **terraform-install.sh**.  
2. Erstelle eine neue Datei in der WSL-Shell:  
   ```sh
   nano terraform-install.sh
   ```
3. Füge den kopierten Inhalt in die Datei ein.  
4. Speichere die Datei und schließe den Editor.  
5. Führe anschließend die folgenden Befehle aus:  
   ```sh
   chmod u+x terraform-install.sh  
   bash terraform-install.sh  
   ```
6. **Erfolg!** Terraform sollte nun installiert sein. Überprüfe die Installation mit:  
   ```sh
   terraform -v
   ```
   Wenn eine Versionsnummer ausgegeben wird, war die Installation erfolgreich.  
