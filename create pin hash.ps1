# Pincode die je wilt hashen
$pincode = "5678"

# Converteer de pincode naar een byte array
$pincodeBytes = [System.Text.Encoding]::UTF8.GetBytes($pincode)

# Maak een SHA-256 hash object
$sha256 = [System.Security.Cryptography.SHA256]::Create()

# Genereer de hash
$hashBytes = $sha256.ComputeHash($pincodeBytes)

# Converteer de hash naar een hexadecimale string
$hashString = -join ($hashBytes | ForEach-Object { $_.ToString("x2") })

# Toon de hash
Write-Output $hashString