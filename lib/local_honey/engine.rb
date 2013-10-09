module LocalHoney
  class Engine < ::Rails::Engine
    isolate_namespace LocalHoney

    config.local_honey = LocalHoney
  end
end
