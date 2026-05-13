# DevLingo

A gamified mobile app for software developers to practice the **technical English** used in international development environments — Scrum meetings, code reviews, dailies, deploys, debugging, software architecture and cross-team communication.

> Unlike traditional language apps, the focus here is the vocabulary, expressions and scenarios that show up in the daily routine of developers working at global companies.

## Stack

| Layer                | Technology                                              |
| -------------------- | ------------------------------------------------------- |
| UI / SDK             | Flutter (3.38+) / Dart 3.10+                            |
| Architecture         | Clean Architecture (feature-first under `lib/src/modules`) |
| State management     | `flutter_bloc` (Bloc + Cubit)                           |
| Dependency injection | `get_it` + `injectable` (codegen)                       |
| Routing              | `go_router`                                             |
| Functional errors    | `fpdart` (`Either<Failure, Success>`)                   |
| Immutable models     | `freezed` + `json_serializable`                         |
| Local persistence    | `drift` (SQL, offline-first, type-safe)                 |
| Backend              | Supabase (Auth + Postgres + RLS)                        |
| Lints                | `very_good_analysis`                                    |
| Testing              | `flutter_test` + `bloc_test` + `mocktail`               |

## Project structure

```
lib/
├── main.dart                              # entry point (calls bootstrap)
└── src/
    ├── app/                               # app root
    │   ├── app_widget.dart                # MaterialApp.router
    │   ├── bootstrap.dart                 # initialization (Supabase, Drift, DI)
    │   └── environment/                   # Env (dev/prod)
    ├── core/                              # cross-feature
    │   ├── di/                            # GetIt + Injectable
    │   ├── errors/                        # AppFailure
    │   ├── network/                       # ConnectivityService
    │   ├── routing/                       # GoRouter + guards
    │   ├── storage/                       # AppDatabase (Drift) + SecureStorage
    │   ├── supabase/                      # SupabaseService
    │   ├── usecases/                      # base UseCase contract
    │   └── extensions/
    ├── design_system/                     # theme, colors, typography, components
    │   ├── theme/
    │   └── components/
    └── modules/                           # features (each one self-contained)
        └── <feature>/
            ├── domain/                    # entities, repository contracts, usecases
            ├── infrastructure/            # datasources (remote/local), dtos, mappers, repo impls
            └── presentation/              # blocs, pages, widgets, module_routes.dart
```

Clean Architecture golden rule: `domain` never imports from `infrastructure` or `presentation`. Dependency arrows always point **inward**.

## Running the app

1. Install dependencies:

   ```bash
   flutter pub get
   ```

2. Generate code (freezed, injectable, json_serializable, drift):

   ```bash
   dart run build_runner build --delete-conflicting-outputs
   ```

3. Run the app in the dev flavor (passing Supabase keys via `--dart-define`):

   ```bash
   flutter run \
     --dart-define=SUPABASE_URL_DEV=<your-url> \
     --dart-define=SUPABASE_ANON_KEY_DEV=<your-anon-key>
   ```

   For production, use the `*_PROD` variables and a `main_prod.dart` entry point.

## Branching strategy

We follow a simplified Git Flow:

```
main      ← stable, always deployable
  ↑ merged from develop when a milestone is finished and tested
develop   ← integration branch, source of truth for new features
  ↑ pull requests
feature/<name>
```

- All new work happens on `feature/*` branches created from `develop`.
- Pull requests target `develop`.
- `develop` is merged into `main` only when a set of features is stable and tested.
- `main` is protected: no direct pushes, PRs only.

Common commands:

```bash
# start a new feature
git checkout develop
git pull
git checkout -b feature/<short-name>

# when done
git push -u origin feature/<short-name>
# then open a Pull Request on GitHub targeting `develop`
```

## Status

Work in progress. Currently in the **architectural foundation** phase — features will be added in sequence, starting with `auth`.
