# AWS CLI Installation und Konfiguration

## Schritt 1: AWS CLI installieren

### Installation unter WSL oder direkt in VS Code
Abhängig davon, ob eine Remote-Verbindung besteht oder nicht, installiere die AWS CLI mit folgendem Befehl:

```sh
sudo apt install awscli
```

## Schritt 2: IAM-Benutzer in der AWS Sandbox anlegen

1. Gehe zu **AWS Sandbox** → **IAM** → **Personen** und klicke auf **Person hinzufügen**.
2. Gib einen **Namen** für die neue Person ein.
3. **Keinen Zugriff auf die AWS-Managementkonsole gewähren**.
4. Klicke auf **Weiter**.
5. Bei der Berechtigungsvergabe hast du zwei Optionen:
   
   **Option 1: Hinzufügen zur Gruppe**
   - Klicke auf **Gruppe erstellen**.
   - Vergib einen **Gruppennamen**.
   - Setze den Haken bei **AdministratorAccess**.
   - Klicke auf **Personengruppe hinzufügen**.
   - Setze den Haken bei der erstellten Gruppe und klicke auf **Weiter**.
   
   **Option 2: Direkte Zuweisung einer Richtlinie**
   - Wähle **Direktes Anfügen einer Richtlinie**.
   - Setze den Haken bei **AdministratorAccess**.
   - Klicke auf **Weiter**.

6. Überprüfe die eingegebenen Daten und klicke auf **Person erstellen**.

## Schritt 3: Zugriffsschlüssel erstellen

1. Klicke auf die neu erstellte Person.
2. Navigiere zum Tab **Sicherheitsanmeldeinformationen**.
3. Scrolle nach unten zu **Zugriffsschlüssel** und klicke auf **Zugriffsschlüssel erstellen**.
4. Wähle **Anwendungsfall: Befehlszeilenschnittstelle (CLI)**.
5. Setze den Haken zur Bestätigung und klicke auf **Weiter**.
6. Gib als **Tag** einfach `Terraform` ein und klicke auf **Weiter**.

## Schritt 4: AWS CLI konfigurieren

1. Öffne VS Code oder WSL und führe den folgenden Befehl aus:

   ```sh
   aws configure
   ```

2. Gib die erforderlichen Informationen ein:
   - **Zugriffsschlüssel**
   - **Geheimer Zugriffsschlüssel**
   - **Standard-Region:** `eu-central-1`
   - **Standard-Output-Format:** `json`

3. In der CLI überprüfen 
   ```sh
   aws sts get-caller-identity
   ```

