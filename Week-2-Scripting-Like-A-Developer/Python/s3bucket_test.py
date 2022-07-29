import unittest

class TestS3(unittest.TestCase):
    def test_bucket_name_value(self):
        bucket = 'cloudsk92xzzsa'
        
        self.assertEqual(bucket, 'cloudskills92xzzsa')

    def test_region_value(self):
        region = 'us-east-1'

        self.assertEqual(region, 'us-east-1')
    
    def test_bucket_name_is_string(self):
        bucket = 'cloudskills92xzzsa'

        self.assertTrue(type(bucket), str)

    def test_region_is_string(self):
        region = 'us-east-1'

        self.assertTrue(type(region), str)

if __name__ == '__main__':
    unittest.main()