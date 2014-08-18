# AWS OpsWorks Recipe to copy files from S3 to server

files = node[:copy_s3_data][:files]
user = node[:copy_s3_data][:user]
Chef::Log.debug('Copying files to server')

files.each do |file|
	Chef::Log.debug("Copy #{file[:key]} from #{file[:bucket]} to #{file[:copy_to]}")
	
	bash 'copy_file' do
		user user
		cwd ::File.dirname(file[:copy_to])
		code "aws s3 cp s3://#{file[:bucket]}/#{file[:key]} #{file[:copy_to]}"
	end
end