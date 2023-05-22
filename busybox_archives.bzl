load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")

# For the debug image
def repositories():
    # To update amd64 busybox binary (#1014)
    # Get the latest commit hash from dist-amd64 branch of docker-library repo. You can also view it
    # at https://github.com/docker-library/official-images/blob/master/library/busybox
    # Substitute it in the link: https://github.com/docker-library/busybox/raw/<latest-commit-hash>/latest/musl/busybox.tar.xz
    # Update the sha256 value. Since github api doesn't give sha256 value, it can be obtained using sha256sum command.
    http_file(
        name = "busybox_amd64",
        executable = True,
        sha256 = "b6dd3c6ee358dc580b2589b21f521f65f07b86a9e1ca9dd91a2c02198ebfe7e9",
        urls = ["https://github.com/docker-library/busybox/raw/7386447a19b39efc3d3dab5a05a7bef806ce274e/latest/musl/busybox.tar.xz"],
    )

    http_file(
        name = "busybox_arm",
        executable = True,
        sha256 = "52123007fdf5ec2843d0f2633eed9aadf7300a81773fbb028057d29c772ac9d1",
        urls = ["https://github.com/docker-library/busybox/raw/62869cab5467e0744c3bab50bb0547937523c65a/latest/musl/busybox.tar.xz"],
    )

    # To update arm64 busybox binary (#657)
    # Get the latest commit hash from dist-arm64v8 branch of docker-library repo. You can also view it
    # at https://github.com/docker-library/official-images/blob/master/library/busybox
    # Substitute it in the link: https://github.com/docker-library/busybox/raw/<latest-commit-hash>/latest/musl/busybox.tar.xz
    # Update the sha256 value. Since github api doesn't give sha256 value, it can be obtained using sha256sum command.
    http_file(
        name = "busybox_arm64",
        executable = True,
        sha256 = "a0db92e74d52f825c4cd2e4a6728cf0ba9964f530b9dc33a83d791623f51c6f4",
        urls = ["https://github.com/docker-library/busybox/raw/5df32dbd40bb2d20a82eaf2297435e37f6c70334/latest/musl/busybox.tar.xz"],
    )

    http_file(
        name = "busybox_s390x",
        executable = True,
        sha256 = "69036066fe84e98b2393b88206598d563ac78b4d4ebb38c72970715522af154e",
        urls = ["https://github.com/docker-library/busybox/raw/7506b58cff792af0c5f56841aefe305ff89144b6/latest/musl/busybox.tar.xz"],
    )

    # To update ppc64le busybox binary (#723)
    # Get the latest commit hash from dist-ppc64le branch of docker-library repo. You can also view it
    # at https://github.com/docker-library/official-images/blob/master/library/busybox
    # Substitute it in the link: https://github.com/docker-library/busybox/raw/<latest-commit-hash>/latest/musl/busybox.tar.xz
    # Update the sha256 value. Since github api doesn't give sha256 value, it can be obtained using sha256sum command.
    http_file(
        name = "busybox_ppc64le",
        executable = True,
        sha256 = "0ad5764612ba82eb752e9d81f7873a807aaa94380bd6bc9428fb49679a3c21cb",
        urls = ["https://github.com/docker-library/busybox/raw/4e1ae38e9ffbbe8b4c9e9c51cc1ebceb62de8503/latest/musl/busybox.tar.xz"],
    )
