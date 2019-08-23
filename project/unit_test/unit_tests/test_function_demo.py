# -*- coding: utf-8 -*-
# @file   : test_function_demo.py
# @author : shlian
# @date   : 2019/8/22
# @version: 1.0
# @desc   :
from function import function_demo
import unittest
import pysnooper

class test_function_demo(unittest.TestCase):

    def setUp(self):
        print("___________________________________init unit test____________________________________________________")

    def tearDown(self):
        print("___________________________________done______________________________________________________________")

    @pysnooper.snoop()
    def test_add_init(self):
        self.assertEqual(first=3,second=function_demo.add(1,2))

    @pysnooper.snoop()
    def test_add_float(self):
        self.assertEqual(first=3.789,second=function_demo.add(3,0.789))

    @pysnooper.snoop()
    def test_add_string(self):
        self.assertEqual(first="abcdefg",second=function_demo.add("ab","cdefg"))
#********************************************************************************************************************
    @pysnooper.snoop()
    def test_sub_int(self):
        self.assertTrue(5==function_demo.sub(105,100))

    @pysnooper.snoop()
    def test_sub_float(self):
        self.assertNotEqual(first=5.78,second=function_demo.sub(10.79,5.01))#这里不等，思考一下为什么呢？

    @pysnooper.snoop()
    def test_sub_float2(self):
        self.assertAlmostEqual(first=5.78,second=function_demo.sub(10.79,5.01),places=2)
#*********************************************************************************************************************
    @pysnooper.snoop()
    def test_multi_number(self):
        self.assertEqual(first=24,second=function_demo.multi(3,8))

    @pysnooper.snoop()
    def test_multi_list(self):
        self.assertListEqual(list1=['th','th','th','th','th','th'],list2=function_demo.multi(6,['th']))

    @pysnooper.snoop()
    def test_multi_str(self):
        self.assertMultiLineEqual(first="aaaaaaaaaaaaaaaaa",second=function_demo.multi(17,"a"))
        self.assertFalse("0123456789"==function_demo.multi(8,"0"))
#*********************************************************************************************************************
    @pysnooper.snoop()
    def test_div_int(self):
        self.assertEqual(first=5,second=function_demo.div(100,20))

    @pysnooper.snoop()
    def test_div_float(self):
        self.assertNotEqual(first=0.33333,second=function_demo.div(1,3))

    @pysnooper.snoop()
    def test_div_float2(self):
        self.assertAlmostEqual(first=0.33333,second=function_demo.div(1,3),places=5)

    @pysnooper.snoop()
    def test_div_exception(self):
        with self.assertRaises(Exception):
            function_demo.div(1,0)


if __name__=="__main__":
    unittest.main()
