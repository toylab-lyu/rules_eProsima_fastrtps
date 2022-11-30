load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

def tools_repositories():
    maybe(
        git_repository,
        name = "rules_foreign_cc",
        remote = "https://github.com/bazelbuild/rules_foreign_cc.git",
        commit = "2c6262f8f487cd3481db27e2c509d9e6d30bfe53",
        shallow_since = "1667994879 +0000",
        # branch = "main",
    )
    maybe(
        git_repository,
        name = "bazel_skylib",
        remote = "https://github.com/bazelbuild/bazel-skylib.git",
        commit = "5bfcb1a684550626ce138fe0fe8f5f702b3764c3",
        shallow_since = "1668623372 +0100",
        # branch = "main",
    )
    # maybe(
    #     git_repository,
    #     name = "com_github_nelhage_rules_boost",
    #     remote = "https://github.com/nelhage/rules_boost",
    #     commit = "8a4f71bdf07ef9d75c69181d815c18a9aa05e77f",
    #     shallow_since = "1669699122 +0000",
    #     # branch = "master",
    # )
