require 'simplecov'
SimpleCov.start 'rails' do
    SimpleCov.add_group "Custom Script file", 'custom_script/custom_script.sh'

    SimpleCov.merge_timeout 3600
    SimpleCov.use_merging true
    
    job_name = ENV['SIMPLECOV_ID']
    coverage_dir "coverage/#{job_name}"

    SimpleCov.command_name  job_name
    
    add_filter 'unit_tests'
    add_filter 'deploy_to_master_check'
end