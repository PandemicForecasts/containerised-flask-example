import unittest
from example_module import add_together


class TestExample(unittest.TestCase):
    def test_add_together(self):
        got = add_together(3, 2)
        want = 5

        self.assertEqual(got, want)


if __name__ == '__main__':
    unittest.main()
