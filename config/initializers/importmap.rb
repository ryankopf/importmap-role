Importmap::Role::Engine.configure do
  config.importmap.draw do
    pin "userimports", to: "path/to/userimports.js"
  end
end