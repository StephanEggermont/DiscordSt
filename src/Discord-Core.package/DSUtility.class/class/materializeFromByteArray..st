fuel
materializeFromByteArray: byteArray
	"Materialize objects using Fuel."
	^(FLMaterializer 
		materializeFrom: byteArray readStream) 