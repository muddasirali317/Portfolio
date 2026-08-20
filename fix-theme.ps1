# Read the file
$content = Get-Content "c:\Users\V15\Documents\Codex\2026-08-15\th\outputs\muddasir-portfolio-fused.html" -Raw

# === CSS VARIABLE: trust colors -> red ===
$content = $content -replace '--trust:#6f9fc8', '--trust:#ff4b26'
$content = $content -replace '--trust-soft:#6f9fc81a', '--trust-soft:#ff4b261a'
$content = $content -replace '--trust-line:#6f9fc855', '--trust-line:#ff4b2655'

# === GREEN BACKGROUND TINTS -> neutral dark ===
# Forest-green tinted dark backgrounds
$content = $content -replace '#0d1714', '#0d0d0f'
$content = $content -replace '#101b17', '#101012'
$content = $content -replace '#0c1512', '#0c0c0e'
$content = $content -replace '#09120f', '#09090b'
$content = $content -replace '#07100d', '#07070a'
$content = $content -replace '#0a1210', '#0a0a0c'
$content = $content -replace '#0a100d', '#0a0a0c'
$content = $content -replace '#0a1017', '#0a0a0c'
$content = $content -replace '#10231b', '#101012'
$content = $content -replace '#0b1110', '#0b0b0d'
$content = $content -replace '#101816', '#101012'
$content = $content -replace '#0d1814', '#0d0d0f'
$content = $content -replace '#0d1118', '#0d0d0f'
$content = $content -replace '#0a0d12', '#0a0a0c'
$content = $content -replace '#182319', '#141416'
$content = $content -replace '#0a130f', '#0a0a0c'
$content = $content -replace '#0c1a15', '#0c0c0e'
$content = $content -replace '#0c1915', '#0c0c0e'
$content = $content -replace '#1b211f', '#1a1a1e'
$content = $content -replace '#0b0e0d', '#0b0b0d'
$content = $content -replace '#1c1919', '#1a1a1e'
$content = $content -replace '#151b24', '#141416'
$content = $content -replace '#0e1218', '#0e0e10'

# === GOLD/AMBER -> warm red tones ===
# e8b84b (gold) -> ff6b4a (warm red-orange, lighter than main red for hierarchy)
$content = $content -replace '#e8b84b', '#ff6b4a'
# f2b84f -> ff6b4a
$content = $content -replace '#f2b84f', '#ff6b4a'
# e0793f (sienna/orange) -> ff4b26
$content = $content -replace '#e0793f', '#ff4b26'
# b88952 -> cc3d1f (dark warm red)
$content = $content -replace '#b88952', '#cc3d1f'
# d7c7a0 -> c8b8b0 (muted warm gray, keeps readability for text)
$content = $content -replace '#d7c7a0', '#c8b8b0'
# #d5d5d5 portrait bg placeholder -> neutral
# (already neutral, leave it)

# === GREEN ACCENT COLORS -> red ===
# 52b788 (primary green accent)
$content = $content -replace '#52b788', '#ff4b26'
# 2d6a4f (dark green)
$content = $content -replace '#2d6a4f', '#661e14'
# 91a098 (gray-green text) -> neutral gray
$content = $content -replace '#91a098', '#8f8f95'
# c0c3c1 (light gray-green) -> neutral light gray
$content = $content -replace '#c0c3c1', '#c0c0c3'
# b8c1c9 (blue-gray) -> neutral
$content = $content -replace '#b8c1c9', '#c0c0c3'

# === BLUE/TRUST HARDCODED COLORS -> red ===
# 6f9fc8 (primary blue)
$content = $content -replace '#6f9fc8', '#ff4b26'
# 4f7698 (dark blue) -> dark red
$content = $content -replace '#4f7698', '#cc3d1f'
# b7d5ec (light blue) -> light red
$content = $content -replace '#b7d5ec', '#ff8a72'
# 8db3d3 (medium blue text) -> muted red
$content = $content -replace '#8db3d3', '#ff8a72'
# 93909e -> keep as-is (already neutral mist gray)

# === PORTRAIT DECORATIVE ELEMENTS ===
# The portrait has multi-colored geometric rings; unify to red
# Already handled by the hex replacements above

# === JS CHAPTER ACCENTS ===
# Already mostly #ff4b26, but fix remaining ones
$content = $content -replace "accent:'#f2b84f'", "accent:'#ff4b26'"
$content = $content -replace "accent:'#e0793f'", "accent:'#ff4b26'"
$content = $content -replace "accent:'#e8dcc8'", "accent:'#ff4b26'"

# === THREE.JS SCENE COLORS ===
$content = $content -replace '0x2d6a4f', '0x661e14'
$content = $content -replace '0x52b788', '0xff4b26'
$content = $content -replace '0xe8b84b', '0xff6b4a'

# Write back
Set-Content "c:\Users\V15\Documents\Codex\2026-08-15\th\outputs\muddasir-portfolio-fused.html" -Value $content -NoNewline

Write-Host "Theme unified to red & black successfully!"
