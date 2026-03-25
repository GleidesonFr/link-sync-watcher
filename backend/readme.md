# 📡 Link Sync Watcher

Sistema de monitoramento e sincronização de downloads entre PC e Web.

## 🛠️ Tecnologias do Backend
- **Framework:** CodeIgniter 3.1.13
- **Linguagem:** PHP 8.0.30
- **Banco de Dados:** MySQL

## 🚀 Como a API funciona
O backend possui um endpoint principal para registro de dispositivos:

**Endpoint:** `POST /api/registrar_pc`

**Campos aceitos (JSON ou POST):**
- `device_token`: Identificador único do PC (String).
- `nome_dispositivo`: Nome legível do computador.
- `tipo`: Categoria do dispositivo (ex: pc, mobile).

## 🗄️ Estrutura do Banco de Dados
A tabela `dispositivos` gerencia o estado atual:
- `id`: Auto-incremento.
- `device_token`: Chave única para evitar duplicatas.
- `ultimo_acesso`: Timestamp da última sincronização bem-sucedida.
