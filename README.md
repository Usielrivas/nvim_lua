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
        - `dracula.lua`: configuración del tema Dracula
        - `formatter.lua`: configuración del formateador
        - `gitsigns.lua`: configuración de Git Signs
        - `indent_blankline.lua`: configuración de indentación en blanco
        - `lsp.lua`: configuración del Language Server Protocol
        - `luasnip.lua`: configuración de Luasnip
        - `lualine.lua`: configuración de Lualine
        - `nvim_autopairs.lua`: configuración de nvim-autopairs
        - `nvim_comment.lua`: configuración de nvim-comment
        - `nvim_tree.lua`: configuración de nvim-tree
        - `nvim_treesitter.lua`: configuración de nvim-treesitter
        - `tokyonight.lua`: configuración del tema Tokyo Night
        - `cmp.lua`: configuración de nvim-cmp
        - `init.lua`: archivo que carga las configuraciones específicas de cada plugin
- `snippets/`: directorio que contiene los snippets para diferentes lenguajes
    - `all.snippets`: snippets generales para todos los lenguajes
    - `ruby.snippets`: snippets específicos para Ruby
    - `eruby.snippets`: snippets específicos para ERuby
    - `cucumber.snippets`: snippets específicos para Cucumber
- `README.md`: este archivo

## Uso

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
