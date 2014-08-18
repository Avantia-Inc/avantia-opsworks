# Default configuration for S3 file to copy
# example: [{ :bucket => 'bucket', :key => 'key.txt', :copy_to => '/my/path/key.txt' },...]
default[:copy_s3_data][:files] = []
default[:copy_s3_data][:user] = 'root'
