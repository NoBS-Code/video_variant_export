@tool
class_name VariantExport
extends Resource

var _value = 0

@export var type : Variant.Type = TYPE_INT:
	get():
		return type
	set(value):
		type = value
		notify_property_list_changed()
		return type

func _get_property_list():
	return [{
		name = "value",
		type = type,
		usage = PROPERTY_USAGE_DEFAULT
	}]

func _get(property: StringName) -> Variant:
	if property == "value":
		return _value
	return null

func _set(property: StringName, value) -> bool:
	if property == "value":
		_value = value
		return false
	return true