# Kung Oracle - Setup

## Step 1: เปิด PowerShell (Admin) แล้ว copy คำสั่งนี้:

```
irm https://raw.githubusercontent.com/Bankhyn/crab-farm-oracle/main/setup-notebook.ps1 | iex
```

## Step 2: ปิด PowerShell เปิดใหม่ แล้ว copy คำสั่งนี้:

```
irm https://raw.githubusercontent.com/Bankhyn/crab-farm-oracle/main/setup-step2.ps1 | iex
```

## Step 3: Login

```
cd C:\crab-farm-oracle
claude login
```

## Step 4: Start

```
claude --dangerously-skip-permissions
```

แล้วพิมพ์ /rc ข้างในเพื่อเปิด Remote Control
