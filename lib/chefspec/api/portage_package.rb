module ChefSpec::API
  # @since 3.0.0
  module PortagePackageMatchers
    ChefSpec::Runner.define_runner_method :portage_package

    #
    # Assert that an +portage_package+ resource exists in the Chef run with the
    # action +:install+. Given a Chef Recipe that installs "apache2" as an
    # +portage_package+:
    #
    #     portage_package 'apache2' do
    #       action :install
    #     end
    #
    # The Examples section demonstrates the different ways to test an
    # +portage_package+ resource with ChefSpec.
    #
    # @example Assert that an +portage_package+ was installed
    #   expect(chef_run).to install_portage_package('apache2')
    #
    # @example Assert that an +portage_package+ was installed with predicate matchers
    #   expect(chef_run).to install_portage_package('apache2').with_version('1.2.3')
    #
    # @example Assert that an +portage_package+ was installed with attributes
    #   expect(chef_run).to install_portage_package('apache2').with(version: '1.2.3')
    #
    # @example Assert that an +portage_package+ was installed using a regex
    #   expect(chef_run).to install_portage_package('apache2').with(version: /(\d+\.){2}\.\d+/)
    #
    # @example Assert that an +portage_package+ was _not_ installed
    #   expect(chef_run).to_not install_portage_package('apache2')
    #
    #
    # @param [String, Regex] resource_name
    #   the name of the resource to match
    #
    # @return [ChefSpec::Matchers::ResourceMatcher]
    #
    def install_portage_package(resource_name)
      ChefSpec::Matchers::ResourceMatcher.new(:portage_package, :install, resource_name)
    end

    #
    # Assert that an +portage_package+ resource exists in the Chef run with the
    # action +:purge+. Given a Chef Recipe that purges "apache2" as an
    # +portage_package+:
    #
    #     portage_package 'apache2' do
    #       action :purge
    #     end
    #
    # The Examples section demonstrates the different ways to test an
    # +portage_package+ resource with ChefSpec.
    #
    # @example Assert that an +portage_package+ was purged
    #   expect(chef_run).to purge_portage_package('apache2')
    #
    # @example Assert that an +portage_package+ was purged with predicate matchers
    #   expect(chef_run).to purge_portage_package('apache2').with_version('1.2.3')
    #
    # @example Assert that an +portage_package+ was purged with attributes
    #   expect(chef_run).to purge_portage_package('apache2').with(version: '1.2.3')
    #
    # @example Assert that an +portage_package+ was purged using a regex
    #   expect(chef_run).to purge_portage_package('apache2').with(version: /(\d+\.){2}\.\d+/)
    #
    # @example Assert that an +portage_package+ was _not_ purged
    #   expect(chef_run).to_not purge_portage_package('apache2')
    #
    #
    # @param [String, Regex] resource_name
    #   the name of the resource to match
    #
    # @return [ChefSpec::Matchers::ResourceMatcher]
    #
    def purge_portage_package(resource_name)
      ChefSpec::Matchers::ResourceMatcher.new(:portage_package, :purge, resource_name)
    end

    #
    # Assert that an +portage_package+ resource exists in the Chef run with the
    # action +:remove+. Given a Chef Recipe that removes "apache2" as an
    # +portage_package+:
    #
    #     portage_package 'apache2' do
    #       action :remove
    #     end
    #
    # The Examples section demonstrates the different ways to test an
    # +portage_package+ resource with ChefSpec.
    #
    # @example Assert that an +portage_package+ was removed
    #   expect(chef_run).to remove_portage_package('apache2')
    #
    # @example Assert that an +portage_package+ was removed with predicate matchers
    #   expect(chef_run).to remove_portage_package('apache2').with_version('1.2.3')
    #
    # @example Assert that an +portage_package+ was removed with attributes
    #   expect(chef_run).to remove_portage_package('apache2').with(version: '1.2.3')
    #
    # @example Assert that an +portage_package+ was removed using a regex
    #   expect(chef_run).to remove_portage_package('apache2').with(version: /(\d+\.){2}\.\d+/)
    #
    # @example Assert that an +portage_package+ was _not_ removed
    #   expect(chef_run).to_not remove_portage_package('apache2')
    #
    #
    # @param [String, Regex] resource_name
    #   the name of the resource to match
    #
    # @return [ChefSpec::Matchers::ResourceMatcher]
    #
    def remove_portage_package(resource_name)
      ChefSpec::Matchers::ResourceMatcher.new(:portage_package, :remove, resource_name)
    end

    #
    # Assert that an +portage_package+ resource exists in the Chef run with the
    # action +:upgrade+. Given a Chef Recipe that upgrades "apache2" as an
    # +portage_package+:
    #
    #     portage_package 'apache2' do
    #       action :upgrade
    #     end
    #
    # The Examples section demonstrates the different ways to test an
    # +portage_package+ resource with ChefSpec.
    #
    # @example Assert that an +portage_package+ was upgraded
    #   expect(chef_run).to upgrade_portage_package('apache2')
    #
    # @example Assert that an +portage_package+ was upgraded with predicate matchers
    #   expect(chef_run).to upgrade_portage_package('apache2').with_version('1.2.3')
    #
    # @example Assert that an +portage_package+ was upgraded with attributes
    #   expect(chef_run).to upgrade_portage_package('apache2').with(version: '1.2.3')
    #
    # @example Assert that an +portage_package+ was upgraded using a regex
    #   expect(chef_run).to upgrade_portage_package('apache2').with(version: /(\d+\.){2}\.\d+/)
    #
    # @example Assert that an +portage_package+ was _not_ upgraded
    #   expect(chef_run).to_not upgrade_portage_package('apache2')
    #
    #
    # @param [String, Regex] resource_name
    #   the name of the resource to match
    #
    # @return [ChefSpec::Matchers::ResourceMatcher]
    #
    def upgrade_portage_package(resource_name)
      ChefSpec::Matchers::ResourceMatcher.new(:portage_package, :upgrade, resource_name)
    end

  end
end
