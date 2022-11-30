load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "new_git_repository")

def dependencies_repositories():
    maybe(
        new_git_repository,
        name = "asio",
        strip_prefix = "asio",
        build_file = "@com_github_lyu_rules_eProsima//third_party/build_files:asio.BUILD.bazel",
        remote = "https://github.com/chriskohlhoff/asio.git",
        commit = "42e1c463fa93197a6d21f1630e6d675a429220c9",
        shallow_since = "1667940194 +1100",
        # branch = "master",
    )
    maybe(
        new_git_repository,
        name = "tinyxml2",
        build_file = "@com_github_lyu_rules_eProsima//third_party/build_files:tinyxml2.BUILD.bazel",
        remote = "https://github.com/leethomason/tinyxml2.git",
        commit = "e45d9d16d430a3f5d3eee9fe40d5e194e1e5e63a",
        shallow_since = "1648934420 -0700",
        # branch = "master",
    )

def eProsima_repositories():
    maybe(
        new_git_repository,
        name = "foonathan_memory",
        build_file = "@com_github_lyu_rules_eProsima//third_party/build_files:foonathan_memory.BUILD.bazel",
        remote = "https://github.com/foonathan/memory.git",
        commit = "3144037b6376057777e84149b5e59e91e01c0ec8",
        shallow_since = "1669628581 +0100",
        # branch = "main",
    )
    maybe(
        new_git_repository,
        name = "fastcdr",
        build_file = "@com_github_lyu_rules_eProsima//third_party/build_files:fastcdr.BUILD.bazel",
        remote = "https://github.com/eProsima/Fast-CDR.git",
        commit = "d6069f345be2e5b34534815a82c3ecfaecb37406",
        shallow_since = "1664434514 +0200",
        # branch = "master",
    )
    maybe(
        new_git_repository,
        name = "fastrtps",
        build_file = "@com_github_lyu_rules_eProsima//third_party/build_files:fastrtps.BUILD.bazel",
        remote = "https://github.com/eProsima/Fast-DDS.git",
        commit = "1011d84c7431596e0b4dfc51b2a2dcacb06e1a66",
        shallow_since = "1669389150 +0100",
        # branch = "master",
    )
