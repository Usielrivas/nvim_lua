# Configuración de Neovim

Este es mi archivo de configuración personalizada para Neovim. Contiene ajustes, plugins y personalizaciones que utilizo en mi flujo de trabajo diario.

## Estructura del proyecto

El proyecto está organizado de la siguiente manera:

- `init.lua`: archivo principal que carga la configuración y los plugins
- `lua/`: directorio que contiene la configuración de Neovim, dividida en diferentes archivos
    - `settings.lua`: ajustes generales de Neovim
    - `plugins.lua`: plugins instalados y configuraciones específicas
    - `mappings.lua`: asignaciones de teclas personalizadas
    - `plugins_config.lua`: configuraciones adicionales para los plugins
    - `theme.lua`: configuraciones de temas
    - `plugin_config/`: directorio que contiene las configuraciones específicas de cada plugin
        - `init.lua`: archivo que carga las configuraciones específicas de cada plugin
- `snippets/`: directorio que contiene los snippets para diferentes lenguajes
    - `all.snippets`: snippets generales para todos los lenguajes
    - `ruby.snippets`: snippets específicos para Ruby
    - `eruby.snippets`: snippets específicos para ERuby
    - `cucumber.snippets`: snippets específicos para Cucumber
- `README.md`: este archivo

## Uso
Debe usar neovim 10 o superior.
Para utilizar esta configuración, sigue los siguientes pasos:

1. Clona este repositorio en tu máquina local.
2. Copia el archivo `init.lua` y la carpeta `lua/` a la siguiente ubicación:
   - En Linux: `~/.config/nvim/`
   - En Windows (PowerShell): `$HOME\AppData\Local\nvim\`
3. Copia la carpeta `snippets/` a la siguiente ubicación:
   - En Linux: `~/.local/share/nvim/`
   - En Windows (PowerShell): `$HOME\AppData\Local\nvim\`
4. Abre Neovim y ejecuta `:PackerInstall` para instalar los plugins.

## Contribuir

Si encuentras algún problema o tienes una sugerencia, no dudes en abrir un _issue_ o enviar un _pull request_. ¡Serán bienvenidos!

## Licencia

Este proyecto está bajo la Licencia MIT.```
