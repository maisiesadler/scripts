# Scripts

## gitsync

Syncs changes between local/remote repositories named `upstream` and `origin`.

Switches to the master branch,
Pulls the latest upstream changes, 
Pushes the latest master to origin.

## gitmain and gitmaster

Removes all local branches except the default branch, supports main or master

## gitclone

Clones a repo and sets the upstream branch to a configurable repo

## dsotnet-create

Create new dotnet classlib, sln and tests

```sh
dotnet-create MyProject
```

Creates a new solution

- **src**
  - **MyProject**
    - **MyProject.csproj**
- **test**
  - **MyProject.Test**
    - **MyProject.Test.csproj**
- **set-from-the-folder-name.sln**

> Will create a new solution, a classlib and an xunit project, then add both to the solution

## dotnet-project

Add project (and corresponding tests) to an existing sln

Environment variables cannot contain dots, so to set the project name provide the project name separated by spaces

```sh
dotnet-project MyProject.Client
```

```sh
:open_file_folder: src
  ┗ :open_file_folder: MyProject
    ┗ :page_facing_up: MyProject.csproj
  ┗ :open_file_folder: **MyProject.Client**
    ┗ :page_facing_up: **MyProject.Client.csproj**
:open_file_folder: test
  ┗ :open_file_folder: MyProject.Test
    ┗ :page_facing_up: MyProject.Test.csproj
  ┗ :open_file_folder: **MyProject.Client.Test**
    ┗ :page_facing_up: **MyProject.Client.Test.csproj**
:page_facing_up: set-from-the-folder-name.sln
```

> Will create a classlib and an xunit project, then add both to the solution
