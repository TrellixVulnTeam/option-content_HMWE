{application, couch, [
    {description, "Apache CouchDB"},
    {vsn, ""},
    {modules, [couch_btree,couch_app,couch_btree_copy,couch_changes,couch_compaction_daemon,couch_compress,couch_config,couch_config_writer,couch_db,couch_db_frontend,couch_db_update_notifier,couch_db_update_notifier_sup,couch_db_updater,couch_doc,couch_ejson_compare,couch_event_sup,couch_file,couch_file_write_guard,couch_httpd,couch_httpd_db,couch_httpd_external,couch_httpd_misc_handlers,couch_httpd_view,couch_log,couch_os_process,couch_primary_sup,couch_query_servers,couch_ref_counter,couch_rep_sup,couch_replication_manager,couch_replication_notifier,couch_replicator,couch_replicator_utils,couch_replicator_worker,couch_secondary_sup,couch_server,couch_server_sup,couch_task_status,couch_util,couch_uuids,couch_view,couch_view_compactor,couch_view_group,couch_view_mapreduce,couch_view_updater,couch_work_queue,file2,file_sorter_2,json_stream_parse]},
    {registered, [
        couch_config,
        couch_db_update,
        couch_db_update_notifier_sup,
        couch_httpd,
        couch_log,
        couch_primary_services,
        couch_query_servers,
        couch_rep_sup,
        couch_secondary_services,
        couch_server,
        couch_server_sup,
        couch_task_status,
        couch_view,
        couch_file_write_guard
    ]},
    {mod, {couch_app, [
        "/opt/couchbase/etc/couchdb/default.ini",
        "/opt/couchbase/etc/couchdb/local.ini"
    ]}},
    {applications, [kernel, stdlib]},
    {included_applications, [crypto, sasl, inets, oauth, lhttpc, mochiweb, os_mon]}
]}.
