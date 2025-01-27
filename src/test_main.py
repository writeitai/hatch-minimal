from main import hello_world


def test_hello_wold():
    result = hello_world()
    assert result == "Hello, World!"
