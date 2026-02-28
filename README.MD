# 🕹️ J2ME Boilerplate (2026 Edition)

Um ambiente de desenvolvimento minimalista e "ready-to-use" para criar jogos e aplicações Java ME (J2ME) diretamente no **Termux** no Android (testado em Samsung Galaxy A23).

## 📋 Visão Geral do Sistema
Este boilerplate foi desenhado para separar a lógica de criação da burocracia de compilação.
- **Linguagem:** Java 1.8 (compatibilidade retroativa).
- **Ambiente:** Termux (Arquitetura `aarch64`).
- **Build System:** Script Bash personalizado (`compile.sh`).

---

## 📁 Estrutura de Pastas
O projeto segue uma hierarquia modular para facilitar a manutenção:

* `src/`: Contém todo o código-fonte (`.java`).
* `libs/`: Dependências oficiais (MIDP 2.0, CLDC 1.1).
* `build/`: Pasta de saída para arquivos compilados (`.class` e `.jar`).
* `manifest.mf`: Metadados de identificação do aplicativo.
* `compile.sh`: O "motor" que automatiza o build.

---

## 🚀 Como Iniciar

### 1. Pré-requisitos
No seu Termux, garanta que possui as ferramentas básicas instaladas:
```bash
pkg install openjdk-17 zip -y

