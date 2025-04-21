# 🚀 Windows Update Automático

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://github.com/lvsodre/windows-update-auto/graphs/commit-activity)
[![Windows](https://img.shields.io/badge/Windows-0078D6?style=flat-square&logo=windows&logoColor=white)](https://www.microsoft.com/windows)
[![made-with-batch](https://img.shields.io/badge/Made%20with-Batch-1f425f.svg)](https://www.gnu.org/software/bash/)

## 📋 Descrição

Uma ferramenta simples e eficiente para automatizar o processo de atualização do Windows e de todos os aplicativos instalados usando o gerenciador de pacotes winget.

## ✨ Funcionalidades

- 🔄 Atualização automática do Windows via Windows Update
- 📦 Atualização de todos os aplicativos via winget
- 🧹 Limpeza de arquivos temporários para otimização do sistema
- 🛡️ Verificação automática de privilégios de administrador

## 📥 Instalação

1. Faça o download do arquivo executável.
2. Execute o arquivo como administrador

## 🔧 Uso

```bash
# Execute o arquivo .exe como administrador
# Ou execute o script diretamente:
.\windows-update-auto.bat
```

## 🔍 Como funciona

O script utiliza os seguintes componentes:

1. **PSWindowsUpdate**: Módulo PowerShell para gerenciar atualizações do Windows
2. **winget**: O gerenciador de pacotes do Windows para atualizar aplicativos
3. **Limpeza de sistema**: Remoção de arquivos temporários para otimização

## 📋 Pré-requisitos

- Windows 10 versão 1809 ou superior
- Windows 11
- [winget](https://learn.microsoft.com/pt-br/windows/package-manager/winget/) instalado (incluído por padrão no Windows 10 v2004 e superior)
- Privilégios de administrador

## 🔗 Links úteis

- [Documentação do winget](https://learn.microsoft.com/pt-br/windows/package-manager/winget/)
- [Página de Atualizações da Microsoft](https://support.microsoft.com/pt-br/windows/atualiza%C3%A7%C3%B5es-do-windows-3c5ae7fc-9fb6-9af1-1984-b5e0412c556a)
- [Módulo PSWindowsUpdate](https://www.powershellgallery.com/packages/PSWindowsUpdate)

## 📜 Licença

Este projeto está licenciado sob a Licença MIT

## 👤 Autor

- GitHub: [@lvsodre](https://github.com/lvsodre)
- LinkedIn: [@lvsodre](https://linkedin.com/in/lvsodre)

## 🤝 Contribuições

Contribuições, issues e pedidos de features são bem-vindos!

## ⭐ Mostre seu apoio

Dê uma ⭐️ se este projeto te ajudou!
