from devcontainer_tutorial import __version__
from devcontainer_tutorial.add1 import add1


def test_version() -> None:
    assert __version__ == "0.1.0"


def test_add1() -> None:
    assert add1(1) == 2
