# -*- coding: utf-8 -*-
# @file   : test_demo.py
# @author : shlian
# @date   : 2019/8/22
# @version: 1.0
# @desc   :
import unittest
import pysnooper

class test_demo(unittest.TestCase):
    def setUp(self):
        print("-------------------------------------init---------------------------------------------")
    def tearDown(self):
        print("-------------------------------------done---------------------------------------------\n")

    @pysnooper.snoop()
    def test_equal(self):
        self.assertEqual(first=1,second=1)

    @pysnooper.snoop()
    def test_notEqual(self):
        self.assertNotEqual(first=5+3,second=5*3)
    @pysnooper.snoop()
    def test_AlmostEqual(self):
        self.assertAlmostEqual(first=1.25678,second=1.25789,places=2)
    @pysnooper.snoop()
    def test_NotAlmostEqual(self):
        self.assertNotAlmostEqual(first=1.25897,second=1.35979,places=1)
########################################################################################################################
    @pysnooper.snoop()
    def test_false(self):
        self.assertFalse(expr= False if 0 else False)
    @pysnooper.snoop()
    def test_true(self):
        import math
        self.assertTrue(expr=math.log(100,10)==2)
########################################################################################################################
    @pysnooper.snoop()
    def test_is(self):
        self.assertIs(expr1="a",expr2="a")
    @pysnooper.snoop()
    def test_isNot(self):
        value1="a"
        value2="b"
        self.assertIsNot(expr1=value1,expr2=value2)
########################################################################################################################
    @pysnooper.snoop()
    def test_isNone(self):
        self.assertIsNone(obj=None)
    @pysnooper.snoop()
    def test_isNotNone(self):
        self.assertIsNotNone(obj="adsfasfas")
########################################################################################################################
    @pysnooper.snoop()
    def test_in(self):
        self.assertIn(member=1024,container=[1,2,4,0,1024,1028]) #list
        self.assertIn(member=1024,container=(1,2,4,0,1024,1028)) #tuple
        self.assertIn(member=1024,container={1,2,4,0,1024,1028}) #set
    @pysnooper.snoop()
    def test_notIn(self):
        self.assertNotIn(member=10,container=[1,2,4,0,1024,1028]) #list
        self.assertNotIn(member=10,container=(1,2,4,0,1024,1028)) #tuple
        self.assertNotIn(member=10,container={1,2,4,0,1024,1028}) #set
########################################################################################################################
    @pysnooper.snoop()
    def test_isInstance(self):
        self.assertIsInstance(obj="aaa",cls=str)
        self.assertIsInstance(obj=1.0,cls=float)
        self.assertIsInstance(obj={0,1},cls=set)
        self.assertIsInstance(obj=(0,1),cls=tuple)
        self.assertIsInstance(obj=[0,1],cls=list)
        self.assertIsInstance(obj={"name":"shlian","age":1},cls=dict)

        class inner_class(object):
            def __init__(self):
                self.name="shlian"
        self.assertIsInstance(obj=inner_class(),cls=inner_class)
    @pysnooper.snoop()
    def test_notIsInstance(self):
        self.assertNotIsInstance(obj=[0,1],cls=tuple)
########################################################################################################################
    @pysnooper.snoop()
    def test_Raise(self):
        with self.assertRaises(Exception):
            raise Exception("raise","exception","abnormal")
########################################################################################################################
    @pysnooper.snoop()
    def test_greater(self):
        self.assertGreater(a=1024,b=1023)
    @pysnooper.snoop()
    def test_greaterEqual(self):
        self.assertGreaterEqual(a=1024,b=1023)
        self.assertGreaterEqual(a=1024,b=1024)
########################################################################################################################
    @pysnooper.snoop()
    def test_less(self):
        self.assertLess(a=1023,b=1024)
    @pysnooper.snoop()
    def test_lessEqual(self):
        self.assertLessEqual(a=1024,b=1024)
########################################################################################################################
    @pysnooper.snoop()
    def test_regex(self):
        self.assertRegex(text="i shlian adfasdfasdf",expected_regex="shlian")
    @pysnooper.snoop()
    def test_notRegex(self):
        self.assertNotRegex(text="i shlian asdfasfs",unexpected_regex="aa")
########################################################################################################################
    @pysnooper.snoop()
    def test_countEqual(self):
        self.assertCountEqual(first=[1,2,3,4,5,6,7,8,9,0],second=[0,9,8,7,6,5,4,3,2,1])
########################################################################################################################
    @pysnooper.snoop()
    def test_multiLineEqual(self):
        self.assertMultiLineEqual(first="i love china",second="i love china")
    @pysnooper.snoop()
    def test_sequenceEqual(self):
        self.assertSequenceEqual(seq1=(1,2,3,4,5),seq2=[1,2,3,4,5])
    @pysnooper.snoop()
    def test_listEqual(self):
        self.assertListEqual(list1=[1,2,3,4,5,6,7,8,9,0],list2=[1,2,3,4,5,6,7,8,9,0])
    @pysnooper.snoop()
    def test_tupleEqual(self):
        self.assertTupleEqual(tuple1=(1,2,3,4,5,6),tuple2=(1,2,3,4,5,6))
    @pysnooper.snoop()
    def test_setEqual(self):
        self.assertSetEqual(set1={1,2,3,4,5,6},set2={6,2,3,4,1,5})
    @pysnooper.snoop()
    def test_DictEqual(self):
        self.assertDictEqual(d1={"name":"shlian","age":25},d2={"age":25,"name":"shlian"})
########################################################################################################################
    @pysnooper.snoop()
    @unittest.skip("skip test_equal2")
    def test_skip_equal(self):
        self.assertEqual(first=1,second=2)
    @pysnooper.snoop()
    @unittest.skipIf(1<2,"skip if 1<2")
    def test_skipif_equal(self):
        self.assertListEqual(list1=[1,2,3],list2=[1,2,3])
########################################################################################################################

if __name__=="__main__":
    unittest.main()