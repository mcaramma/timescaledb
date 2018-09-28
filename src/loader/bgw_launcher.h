
#ifndef TIMESCALEDB_BGW_LAUNCHER_H
#define TIMESCALEDB_BGW_LAUNCHER_H

#include <postgres.h>
#include <fmgr.h>

extern void bgw_cluster_launcher_register(void);

/*called by postmaster at launcher bgw startup*/
PGDLLEXPORT extern Datum ts_bgw_cluster_launcher_main(PG_FUNCTION_ARGS);
PGDLLEXPORT extern Datum ts_bgw_db_scheduler_entrypoint(PG_FUNCTION_ARGS);



#endif							/* TIMESCALEDB_BGW_LAUNCHER_H */
