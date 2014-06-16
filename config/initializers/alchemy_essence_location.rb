Alchemy::Modules.register_module({
  name: 'supporters',
  order: 1,
  navigation: {
    name: 'modules.supporters',
    controller: '/admin/supporters',
    action: 'index',
    icon: 'users'
  }
})

Alchemy::Modules.register_module({
  name: 'locations',
  engine_name: 'alchemy',
  navigation: {
    name: 'Locations',           # The name in the main navigation (translated via I18n).
    controller: '/alchemy/admin/locations',      # The controller that will be used.
    action: 'index',                    # The controller action that will be used.
    icon: 'library',                # Class of icon that will be rendered as navigation icon.
    sub_navigation: [
      {
        name: 'Locations',       # The name for the subnavigation tab (translated via I18n).
        controller: '/alchemy/admin/locations',  # Controller that will be used.
        action: 'index'                 # Controller action that will be used.
      }
    ]
  }
})
