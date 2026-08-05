package expo.modules.novamedia3

import expo.modules.kotlin.modules.Module
import expo.modules.kotlin.modules.ModuleDefinition

class NovaMedia3Module : Module() {
  override fun definition() = ModuleDefinition {
    Name("NovaMedia3")

    View(NovaMedia3View::class) {
      Events("onPlaybackState", "onProgress", "onPlayerError")

      Prop("sourceUrl") { view: NovaMedia3View, value: String? ->
        view.setSourceUrl(value)
      }

      Prop("sourceHeaders") { view: NovaMedia3View, value: String? ->
        view.setSourceHeaders(value)
      }

      Prop("initialPosition") { view: NovaMedia3View, value: Double? ->
        view.setInitialPosition(value ?: 0.0)
      }

      Prop("command") { view: NovaMedia3View, value: String? ->
        view.applyCommand(value)
      }

      Prop("contentFit") { view: NovaMedia3View, value: String? ->
        view.setContentFit(value)
      }
    }
  }
}