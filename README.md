# Express + TypeScript + Prisma Boilerplate

This is a boilerplate for Express + TypeScript + Prisma. also we are implementing DDD (Domain-Driven Design) with Prisma but we are ignoring Domain/Models since Prisma already have it.

## TODO

- [x] User Registration API
- [x] User Login API
- [x] Auth Middleware
- [x] Get Current User / Authenticated User
- [x] Logout Authenticated User
- [x] Redis Cache
- [x] JWT Auth
- [x] Reset Prisma Migration so it will Clean
- [x] Dockerfile & Docker Compose
- [ ] Prometheus Metrics Setup
- [ ] Swagger Documentation

## Dependencies

`npm install`

## Run

`npm run build && npm run start`

## Run Dev

`npm run dev`

## Prisma Migration

`npx prisma migrate dev`

## Prisma

`npx prisma generate`

## Run Completely

```shell
npm install

npx prisma migrate dev

npx prisma generate

npm run build

npm run start
```
    <!-- "@types/ioredis": "^5.0.0", -->
    <!-- "ioredis": "^5.4.1", -->

anda adalah senior programmer backend 10 tahun berpengalaman
Struktur Folder Kombinasi Clean + DDD + SOLID + TDD yang umum digunakan
src/
 ├── domain/                     # Lapisan inti bisnis (pure logic)
 │   ├── entities/               # Entity DDD (representasi object bisnis)
 │   ├── valueObjects/           # Nilai yang tak memiliki identity unik
 │   └── repositories/           # Interface (kontrak) untuk akses data
 │
 ├── application/                # Lapisan use case (interaksi domain)
 │   ├── usecases/               # Logic proses bisnis (use case)
 │   └── services/               # Service tambahan (helper bisnis)
 │
 ├── infrastructure/             # Implementasi teknis (I/O, ORM, dll)
 │   ├── database/               # Koneksi DB (pool, client, migration)
 │   ├── prisma/                 # Prisma schema, migrations, adapters
 │   ├── config/                 # Env, Logger, Swagger setup
 │   ├── monitoring/             # Prometheus metrics collector
 │   ├── logger/                 # Winston setup (log format, transports)
 │   └── repositoryImpl/         # Implementasi repository dari domain/
 │
 ├── interface/                  # Lapisan interaksi user/system (HTTP)
 │   ├── controllers/            # Controller Express (terima & kirim response)
 │   ├── routes/                 # Definisi route Express
 │   ├── middleware/             # Middleware (auth, error handler, logging)
 │   └── validators/             # Validasi input (Joi/Yup/zod)
 │
 ├── tests/                      # Folder testing (TDD-ready)
 │   ├── unit/                   # Unit test tiap komponen kecil
 │   ├── integration/            # Test integrasi antar komponen
 │   ├── mocks/                  # Mock data & dependency injection
 │   └── e2e/                    # End-to-end test (API test via supertest)
 │
 ├── main.js                     # Entry point app
 └── app.js                      # Inisialisasi Express & dependency injection

Tools yang Digunakan:
Express.js → HTTP server
Prisma ORM → akses database
Jest → unit testing
Swagger (OpenAPI) → dokumentasi API
Winston → Logger 
Prometheus + Grafana → monitoring performa
ESLint + Prettier → clean code enforcement
Create Apps CRUDS (Create/Read/Delete/Update/Search) with that description and structure typescript version in node js express    