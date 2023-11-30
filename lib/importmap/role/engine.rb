module Importmap
    module Role
        class Engine < ::Rails::Engine
        isolate_namespace Importmap::Role
        end
    end
end
