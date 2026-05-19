# Laravel Video Game Web Shop

Autor: **Matija Kojčić**

Ovo je web aplikacija za prodaju video igara napravljena u Laravelu. Omogucava autentifikaciju korisnika, kontrolni panel za admina, CRUD funkcionalnost za igre, upravljanje porudzbinama i komentarima.

---

## 🌐 Dostupni jezici

- [English](README.md)
- [Srpski](README.sr.md)
- [日本語](README.ja.md)

---

## 🚀 Live Demo

Projekat je dostupan na:

**[https://laravel-game-shop.onrender.com](https://laravel-game-shop.onrender.com)**

> Napomena: Sajt je hostovan na Render-ovom besplatnom planu, pa moze biti potrebno 30–60 sekundi da se ucita ako je bio neaktivan.

### Test nalozi

| Uloga  | Email          | Lozinka |
|--------|----------------|---------|
| Admin  | admin@pwa.rs   | admin   |
| Editor | editor@pwa.rs  | editor  |
| User   | user@pwa.rs    | user    |

---

## Funkcionalnosti

- **Pocetna strana**: Prikazuju se istaknute video igre.
- **Detalji igre**: Kliknite na "Opsirnije" za vise informacija i skrolujte do dugmeta "Poruci" da biste narucili igru.
- **Korisnicki kontrolni panel**:
  - Pregled i upravljanje porudzbinama.
  - Ostavljanje komentara za igre koje ste narucili.
  - Otkazivanje postojecih porudzbina.
- **Admin kontrolni panel**:
  - Dostupan samo adminima.
  - Upravljanje:
    - Igrama (CRUD)
    - Korisnicima (CRUD, admin-only)
    - Komentarima (CRUD)
  - Editori mogu upravljati igrama i komentarima, ali ne i korisnicima.
  - Obicni korisnici nemaju pristup admin panelu.