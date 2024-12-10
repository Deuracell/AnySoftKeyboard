"Define linter aspects"

load("@aspect_rules_lint//lint:eslint.bzl", "lint_eslint_aspect")
load("@aspect_rules_lint//lint:lint_test.bzl", "lint_test")

eslint = lint_eslint_aspect(
    binary = "@@//tools:eslint",
    configs = [
        "@@//:eslintrc",
        "@@//:tsconfig",
    ],
)

eslint_test = lint_test(aspect = eslint)
