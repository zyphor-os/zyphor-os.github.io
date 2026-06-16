# 📦 Zyphor Repo (zyphor_repo)

## 📌 Purpose

The `zyphor_repo` serves as the **central registry and source of truth** for Zyphor OS packages and repositories.

It defines the following:

- Package registry (`registry.json`)
- APT repository sources
- DEB download-based packages
- Snap package definitions
- Internal package references

---

## 📦 DEB Package Hosting Structure

Contributors may upload `.deb` files directly into the repository pool using a structured layout:

```bash
pool/main/z/<package-name-version>.deb
```

Example:

```bash
pool/main/z/whatsapp_2.24.1_amd64.deb
```

---

## 🔗 Linking DEB Packages in Registry

After uploading a `.deb` file, it **must** be registered in `registry.json` using its direct URL:

```json
"whatsapp": {
  "type": "apt",
  "package": "whatsapp",
  "channel": "",
  "flags": ""
}
```

---

## 🧠 Adding New Applications

To add a new application to `registry.json`:

```json
"app-name": {
  "type": "apt | deb | snap | internal",
  "package": "real-package-name",
  "url": "direct-deb-url (required for deb)",
  "repo": "repo-key (optional)",
  "channel": "stable | beta | edge",
  "flags": ""
}
```

---

## ⚠️ Rules

- No duplicate app keys
- Always verify real package names
- No broken or dead URLs
- Avoid unstable sources unless clearly labeled
- Keep JSON valid at all times
- The **pool** is for storage; the **registry** is for execution mapping
- Every `.deb` in the pool **must** have a corresponding registry entry

---

## 🧪 Validation

Before committing:

```bash
jq . registry.json
```

Ensure:

- No JSON errors
- No duplicate keys
- Clean formatting

---

## 🔐 Security Rules

> Protecting users from supply chain attacks and malicious software is a top priority.

Do **NOT** include:

- Malicious URLs
- Unverified binaries
- Obfuscated scripts
- Suspicious external installers

---

## 🚀 Contribution Flow

1. Fork the repository
2. Upload your `.deb` file to the pool directory (skip if not applicable)
3. Modify `registry.json`
4. Validate using `jq`
5. Commit your changes
6. Submit a Pull Request
7. Await review

---

## 💡 Philosophy

> This repo is the **brain of Zyphor OS package management** — treat it accordingly.