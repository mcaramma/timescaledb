CREATE OR REPLACE FUNCTION _timescaledb_internal.get_git_commit() RETURNS TEXT
    AS '@MODULE_PATHNAME@', 'ts_get_git_commit' LANGUAGE C IMMUTABLE STRICT PARALLEL SAFE;

CREATE OR REPLACE FUNCTION _timescaledb_internal.get_os_info()
    RETURNS TABLE(sysname TEXT, version TEXT, release TEXT)
    AS '@MODULE_PATHNAME@', 'ts_get_os_info' LANGUAGE C IMMUTABLE STRICT PARALLEL SAFE;

CREATE OR REPLACE FUNCTION _timescaledb_internal.get_version()
    RETURNS TABLE(major INTEGER, minor INTEGER, patch INTEGER, modtag TEXT)
    AS '@MODULE_PATHNAME@', 'ts_version_get_info' LANGUAGE C IMMUTABLE STRICT PARALLEL SAFE;

CREATE OR REPLACE FUNCTION get_telemetry_report() RETURNS TEXT
    AS '@MODULE_PATHNAME@', 'ts_get_telemetry_report' LANGUAGE C IMMUTABLE STRICT PARALLEL SAFE;
