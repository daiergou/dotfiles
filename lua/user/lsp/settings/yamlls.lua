
return {
	settings = {
		yaml = {
			schemas = {
				-- ["https://kubernetesjsonschema.dev/v1.14.0/deployment-apps-v1.json"] = "/*deployment*.yaml",
    --             ["https://kubernetesjsonschema.dev/v1.10.3-standalone/service-v1.json"] = "/*service*.yaml",
				["https://raw.githubusercontent.com/yannh/kubernetes-json-schema/master/v1.22.0/all.json"] = "/*.yaml",
			},
		},
	},
}
