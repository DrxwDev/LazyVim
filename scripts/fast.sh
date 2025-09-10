#!/bin/zsh

echo "🧹 Limpiando sistema en Fedora 41..."

# 1. Limpiar la caché de DNF
echo "📦 Limpiando caché de DNF..."
sudo dnf clean all

# 2. Borrar paquetes huérfanos no necesarios
echo "🧽 Eliminando paquetes huérfanos..."
sudo dnf autoremove -y

sync; echo 3 > /proc/sys/vm/drop_caches


# 3. Vaciar la papelera del usuario
echo "🗑️  Vaciando papelera..."
[ -d /root/.local/share/Trash/files ] && rm -rf /root/.local/share/Trash/files/*
[ -d /root/.local/share/Trash/info ] && rm -rf /root/.local/share/Trash/info/*

# 4. Liberar caché de memoria (requiere permisos de root)
echo "🧠 Liberando caché de memoria..."
sudo sh -c "sync; echo 3 > /proc/sys/vm/drop_caches"

echo "✅ Limpieza completada."
