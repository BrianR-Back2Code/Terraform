
# Terraform Installation  

## **Möglichkeit 1: Manuelle Installation ( Gitless Version )**  

1. Kopiere den Inhalt der Datei **terraform-install.sh**.  
2. Erstelle eine neue Datei in der WSL-Shell:  

   ```sh
   nano terraform_install.sh
   ```  

3. Füge den kopierten Inhalt in die Datei ein.  
4. Speichere die Datei und schließe den Editor.  
5. Führe anschließend die folgenden Befehle aus:  

   ```sh
   chmod u+x terraform_install.sh  
   bash terraform_install.sh  
   ```  

6. **Erfolg!** Terraform sollte nun installiert sein. Überprüfe die Installation mit:  

   ```sh
   terraform -v
   ```  

   Falls eine Versionsnummer erscheint, war die Installation erfolgreich. 🎉  

---

## **Möglichkeit 2: Installation über ein Git-Repository**  

### 1. Ist Git installiert?  

Bevor du loslegst, prüfe, ob Git in deiner WSL-Umgebung installiert ist. Öffne das Terminal und gib ein:  

```sh
git --version
```  

Falls eine Versionsnummer erscheint, ist Git bereits installiert. Falls nicht, installiere es mit:  

```sh
sudo apt update && sudo apt install -y git
```  

### 2. Repository klonen  

1. Öffne das Terminal in WSL.  
2. Wechsle in das Verzeichnis, in dem du das Repository speichern möchtest:  

   ```sh
   cd /pfad/zum/zielordner
   ```  

3. Klone das Repository:  

   ```sh
   git clone https://github.com/BrianR-Back2Code/Terraform.git
   ```  

4. Wechsle in das geklonte Repository:  

   ```sh
   cd Terraform
   ```  

### 3. Terraform installieren  

1. Mache das Installationsskript ausführbar:  

   ```sh
   chmod u+x terraform_install.sh
   ```  

2. Führe das Skript aus:  

   ```sh
   bash terraform_install.sh
   ```  

3. Überprüfe, ob Terraform erfolgreich installiert wurde:  

   ```sh
   terraform -v
   ```  

   Falls eine Versionsnummer erscheint, war die Installation erfolgreich. 🎉  
