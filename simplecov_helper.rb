require 'simplecov'
module SimpleCovHelper
  def self.total_coverage!
    resultset_files = Pathname.glob(
      File.join(SimpleCov.coverage_path, '**', '.resultset.json')
    )

    result_array = begin
                    resultset_files.map do |result_file|
                      SimpleCov::Result.from_hash JSON.parse(result_file.read)
                    end
                   rescue StandardError
                     {}
                   end
    SimpleCov::ResultMerger.merge_results(*result_array).format!
  end
end