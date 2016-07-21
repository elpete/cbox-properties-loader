# ColdBox Properties Loader

This module reads the Java System properties (`java.lang.system.getProperties()`) and loads the values into the ColdBox settings.

## Installation

`box install cbox-properties-loader`

## Usage
All your properties will be loaded by default.

You can access these in your ColdBox app by using this:
```
getSetting("PROPERTY_NAME")
```

You can also use it by injecting it with 
```
component {
	property name="secret" inject="coldbox:setting:PROPERTY_NAME";
}
```

## Other packages you might want

`[box install commandbox-dotenv](https://www.forgebox.io/view/commandbox-dotenv)`

Adds the contents of a `.env` file to your Java System properties when using CommandBox servers.