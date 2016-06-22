component {
	// Module Properties
	this.title 				= "Properties Loader";
	this.author 			= "Eric Peterson";
	this.description 		= "Reads values from your Java System properties and adds the values to your ColdBox settings.";
	this.version			= "1.0.0";

	function configure() {
	}

	function onLoad() {
		var properties = createObject("java", "java.lang.System").getProperties();
		for (var key in properties) {
			controller.setSetting(key, properties[ key ]);
			log.info("Added environment secret #key# to settings");
		}
	}
}