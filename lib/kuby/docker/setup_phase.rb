module Kuby
  module Docker
    class SetupPhase < Phase
      DEFAULT_WORKING_DIR = '/usr/src/app'.freeze
      DEFAULT_RAILS_ENV = :production

      attr_accessor :base_image, :working_dir, :rails_env

      def apply_to(dockerfile)
        dockerfile.from(base_image || default_base_image)
        dockerfile.workdir(working_dir || DEFAULT_WORKING_DIR)
        dockerfile.env("RAILS_ENV=#{rails_env || DEFAULT_RAILS_ENV}")
      end

      private

      def default_base_image
        @default_base_image ||= case metadata.distro_name
          when :debian
            "ruby:#{RUBY_VERSION}"
          when :alpine
            "ruby:#{RUBY_VERSION}-alpine#{metadata.distro_version}"
          else
            # ERROR
        end
      end
    end
  end
end
