# 🔌 Flash Automático CC2531 Zigbee

## 🧠 Descripción

Este proyecto proporciona un **script Bash automatizado** para flashear el módulo **CC2531 Zigbee USB Dongle**, utilizado en integraciones con **Zigbee2MQTT**, **Home Assistant** y otros sistemas IoT.

El script descarga, compila y ejecuta automáticamente todas las herramientas necesarias para grabar el firmware **Z-Stack Home 1.2** en el dispositivo CC2531, sin necesidad de intervención manual.

---

## ⚙️ Funcionalidades

- 🚀 **Automatiza** el proceso completo de flasheo.  
- 📦 Instala dependencias (`git`, `wget`, `unzip`, `make`).  
- 🔽 Descarga la última versión del firmware **Z-Stack Home 1.2** desde GitHub.  
- 💾 Compila y utiliza la herramienta [flash_cc2531](https://github.com/jmichault/flash_cc2531).  
- ⚡ Borra y escribe el firmware en el dispositivo CC2531.  
- ✅ Muestra confirmación al finalizar correctamente el proceso.  

---

## 🧩 Requisitos

Antes de ejecutar el script, asegúrate de tener lo siguiente:

- Un sistema operativo **Linux** (Ubuntu/Debian recomendado).  
- Acceso a permisos `sudo`.  
- Un módulo **CC2531** conectado al equipo mediante USB.  
- Paquete `build-essential` instalado (si no está, el script puede fallar al compilar).  

Instálalo manualmente con:
```bash
sudo apt-get install -y build-essential

⚠️ Advertencias

⚡ Este proceso sobrescribe completamente el firmware actual del CC2531.

🧲 No desconectes el dispositivo mientras se realiza el flasheo.

🔌 Asegúrate de tener el adaptador CC-Debugger o un flasher USB CC2531 compatible.

🧑‍💻 Créditos

flash_cc2531
 – Herramienta creada por jmichault.

Z-Stack Firmware
 – Firmware mantenido por Koenkk (Zigbee2MQTT Project).

Script de automatización desarrollado por Arnulfo De Gracia (MIDESMIS).

🤝 Contribuciones

¿Tienes mejoras o nuevas ideas?
Crea un Pull Request o abre un Issue en el repositorio.

📜 Licencia

Este proyecto se distribuye bajo la licencia MIT.
Consulta el archivo LICENSE para más información.

📡 Contacto

Autor: Arnulfo De Gracia
Proyecto: MIDESMIS Labs
