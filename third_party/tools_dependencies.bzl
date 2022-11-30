load("@rules_foreign_cc//foreign_cc:repositories.bzl", "rules_foreign_cc_dependencies")
#load("@com_github_nelhage_rules_boost//:boost/boost.bzl", "boost_deps",)

def tools_dependencies():
    rules_foreign_cc_dependencies()
    #boost_deps()
