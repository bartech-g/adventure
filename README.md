# Adventure (CAP + Fiori Elements)

A simple **SAP CAP** backend with a **Fiori elements (UI5)** frontend to manage Spacefarers, Departments, and Positions.

## Prerequisites

- **Node.js** LTS (≥ 18.x) + npm
- **@sap/cds-dk** (global)
  ```bash
  npm i -g @sap/cds-dk
  ```

## 1) Clone

```bash
git clone https://github.com/bartech-g/adventure.git
cd adventure
```

## 2) Install deps (root)

```bash
npm install
```

## 3) Start CAP backend (loads CSVs into a local SQLite DB)

```bash
cds watch
```

# Getting Started

Welcome to your new project.

It contains these folders and files, following our recommended project layout:

| File or Folder | Purpose                              |
| -------------- | ------------------------------------ |
| `app/`         | content for UI frontends goes here   |
| `db/`          | your domain models and data go here  |
| `srv/`         | your service models and code go here |
| `package.json` | project metadata and configuration   |
| `readme.md`    | this getting started guide           |

## Next Steps

- Open a new terminal and run `cds watch`
- (in VS Code simply choose _**Terminal** > Run Task > cds watch_)
- Start adding content, for example, a [db/schema.cds](db/schema.cds).

## Learn More

Learn more at https://cap.cloud.sap/docs/get-started/.
