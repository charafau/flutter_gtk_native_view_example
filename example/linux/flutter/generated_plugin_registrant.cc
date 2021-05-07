//
//  Generated file. Do not edit.
//

#include "generated_plugin_registrant.h"

#include <gtk_example/gtk_example_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) gtk_example_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "GtkExamplePlugin");
  gtk_example_plugin_register_with_registrar(gtk_example_registrar);
}
