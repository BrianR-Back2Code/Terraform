#! bin/bash

sudo apt-get update && sudo apt-get install -y gnupg software-properties-common

wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null

gpg --no-default-keyring \
--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
--fingerprint

echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list

# Tatsächlichen Fingerabdruck des gespeicherten Schlüssels abrufen
ACTUAL_FINGERPRINT=$(gpg --no-default-keyring \
  --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
  --fingerprint | grep -Eo "([0-9A-F]{4} ){9}[0-9A-F]{4}")

# Fingerabdruck vergleichen
if [[ "$ACTUAL_FINGERPRINT" != "$EXPECTED_FINGERPRINT" ]]; then
    echo "Fehler: Der GPG-Schlüssel stimmt nicht mit dem erwarteten Fingerabdruck überein!"
    exit 1
fi

echo "GPG-Schlüssel erfolgreich überprüft!"

sleep 3

sudo apt update

sudo apt-get install terraform

terraform -v

sleep 2

echo "Terraform ist erfolgreich installiert worden"

terraform -install-autocomplete

echo "Terraform Auto Complete installiert"