{application, erl_docgen,
 [{description, "Misc tools for building documentation"},
  {vsn, "0.7.3"},
  {modules, [docgen_otp_specs,
  	     docgen_edoc_xml_cb,
	     docgen_xmerl_xml_cb
	    ]
  },
  {registered,[]},
  {applications, [kernel,stdlib]},
  {env, []},
  {runtime_dependencies, ["xmerl-1.3.7","stdlib-3.4","edoc-0.7.13","erts-9.0"]}
 ]
}.
