# -*- coding: utf-8 -*-
# @file   : test_demo.py
# @author : shlian
# @date   : 2019/8/22
# @version: 1.0
# @desc   :
import unittest
import pysnooper

class test_demo(unittest.TestCase):
    @pysnooper.snoop()
    def test_equal(self):
        self.assertEqual(first=1,second=1)

    @pysnooper.snoop()
    def test_false(self):
        self.assertFalse(expr= False if 0 else False)

    @pysnooper.snoop()
    def test_true(self):
        import math
        self.assertTrue(expr=math.log(100,10)==2)

    @pysnooper.snoop()
    def test_DictEqual(self):
        self.assertDictEqual(d1={"name":"shlian","age":25},d2={"age":25,"name":"shlian"})

    @pysnooper.snoop()
    def test_AlmostEqual(self):
        self.assertAlmostEqual(first=1.25678,second=1.25789,places=2)

if __name__=="__main__":
    unittest.main()