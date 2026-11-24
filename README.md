# test-dotnet-core

Test package `mira-test` for the molior system tests.

A .NET build: a C# hello world built with `dotnet build`. The build dependency `dotnet-sdk-11.0` comes from a mirror of
the Microsoft package repository (https://packages.microsoft.com/debian/13/prod), which the project version has as a
dependency. The build needs no network (no NuGet packages).
