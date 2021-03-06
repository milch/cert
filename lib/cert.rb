require 'cert/version'
require 'cert/dependency_checker'
require 'cert/developer_center'
require 'cert/cert_runner'
require 'cert/cert_checker'
require 'cert/signing_request'
require 'cert/keychain_importer'

require 'fastlane_core'

module Cert
  TMP_FOLDER = "/tmp/cert/"
  FileUtils.mkdir_p TMP_FOLDER

  Helper = FastlaneCore::Helper # you gotta love Ruby: Helper.* should use the Helper class contained in FastlaneCore

  ENV['FASTLANE_TEAM_ID'] ||= ENV["CERT_TEAM_ID"]

  FastlaneCore::UpdateChecker.verify_latest_version('cert', Cert::VERSION)
  DependencyChecker.check_dependencies
end
