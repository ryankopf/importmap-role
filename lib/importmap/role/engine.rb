module Importmap
    module Role
        class Engine < ::Rails::Engine
            isolate_namespace Importmap::Role
            initializer 'importmap-role.assets.precompile' do |app|
                app.config.assets.precompile += ['userimports.js']
            end
        end
    end
end
