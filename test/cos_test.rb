require 'minitest/autorun'
$LOAD_PATH.unshift(File.expand_path("../../lib", __FILE__))


#Dir[File.expand_path(File.dirname(__FILE__) + "/../lib/cos/*.rb")].each(&method(:require))

require 'cos'
include COS
class ListTest < Minitest::Test
 
  def setup
  	COS::Logging::set_logger(STDOUT, Logger::DEBUG)
    @bucket = COS.client(config: '~/.cos.yml').bucket
  end

  def test_list_big_dir
 
   puts @bucket.bucket_name
   puts @bucket.authority

   @bucket.create_folder("test_dir1", biz_attr: '测试目录1')

  end

end