namespace Sqlite3;

using System;
using System.Interop;

static
{
	[LinkName("sqlite3_libversion")]
	public static extern c_char* libversion();
	[LinkName("sqlite3_sourceid")]
	public static extern c_char* sourceid();
	[LinkName("sqlite3_libversion_number")]
	public static extern c_int libversion_number();
	[LinkName("sqlite3_compileoption_used")]
	public static extern c_int compileoption_used(  c_char* zOptName);
	[LinkName("sqlite3_compileoption_get")]
	public static extern c_char* compileoption_get(  c_int N);
	[LinkName("sqlite3_threadsafe")]
	public static extern c_int threadsafe();
	[LinkName("sqlite3_close")]
	public static extern c_int close(  sqlite3* bf_arg0);
	[LinkName("sqlite3_close_v2")]
	public static extern c_int close_v2(  sqlite3* bf_arg0);
	[LinkName("sqlite3_exec")]
	public static extern c_int exec(  sqlite3* bf_arg0, c_char* sql, function c_int(void*, c_int, c_char**, c_char**) callback, void* bf_arg3, c_char** errmsg);
	[LinkName("sqlite3_initialize")]
	public static extern c_int initialize();
	[LinkName("sqlite3_shutdown")]
	public static extern c_int shutdown();
	[LinkName("sqlite3_os_init")]
	public static extern c_int os_init();
	[LinkName("sqlite3_os_end")]
	public static extern c_int os_end();
	[LinkName("sqlite3_config")]
	public static extern c_int config(ConfigOptions bf_arg0);
	[LinkName("sqlite3_db_config")]
	public static extern c_int db_config(sqlite3* bf_arg0, DatabaseConnectionConfigOptions op);
	[LinkName("sqlite3_extended_result_codes")]
	public static extern c_int extended_result_codes(  sqlite3* bf_arg0, c_int onoff);
	[LinkName("sqlite3_last_insert_rowid")]
	public static extern int64 last_insert_rowid(  sqlite3* bf_arg0);
	[LinkName("sqlite3_set_last_insert_rowid")]
	public static extern void set_last_insert_rowid(  sqlite3* bf_arg0, int64 bf_arg1);
	[LinkName("sqlite3_changes")]
	public static extern c_int changes(  sqlite3* bf_arg0);
	[LinkName("sqlite3_changes64")]
	public static extern int64 changes64(  sqlite3* bf_arg0);
	[LinkName("sqlite3_total_changes")]
	public static extern c_int total_changes(  sqlite3* bf_arg0);
	[LinkName("sqlite3_total_changes64")]
	public static extern int64 total_changes64(  sqlite3* bf_arg0);
	[LinkName("sqlite3_interrupt")]
	public static extern void interrupt(  sqlite3* bf_arg0);
	[LinkName("sqlite3_is_interrupted")]
	public static extern c_int is_interrupted(  sqlite3* bf_arg0);
	[LinkName("sqlite3_complete")]
	public static extern c_int complete(  c_char* sql);
	[LinkName("sqlite3_complete16")]
	public static extern c_int complete16(  void* sql);
	[LinkName("sqlite3_busy_handler")]
	public static extern c_int busy_handler(  sqlite3* bf_arg0, function c_int(void*, c_int) bf_arg1, void* bf_arg2);
	[LinkName("sqlite3_busy_timeout")]
	public static extern c_int busy_timeout(  sqlite3* bf_arg0, c_int ms);
	[LinkName("sqlite3_get_table")]
	public static extern c_int get_table(  sqlite3* db, c_char* zSql, c_char*** pazResult, c_int* pnRow, c_int* pnColumn, c_char** pzErrmsg);
	[LinkName("sqlite3_free_table")]
	public static extern void free_table(  c_char** result);
	[LinkName("sqlite3_mprintf")]
	public static extern c_char* mprintf(  c_char* bf_arg0);
	[LinkName("sqlite3_vmprintf")]
	public static extern c_char* vmprintf(  c_char* bf_arg0, void* bf_arg1);
	[LinkName("sqlite3_snprintf")]
	public static extern c_char* snprintf(  c_int bf_arg0, c_char* bf_arg1, c_char* bf_arg2);
	[LinkName("sqlite3_vsnprintf")]
	public static extern c_char* vsnprintf(  c_int bf_arg0, c_char* bf_arg1, c_char* bf_arg2, void* bf_arg3);
	[LinkName("sqlite3_malloc")]
	public static extern void* malloc(  c_int bf_arg0);
	[LinkName("sqlite3_malloc64")]
	public static extern void* malloc64(  uint64 bf_arg0);
	[LinkName("sqlite3_realloc")]
	public static extern void* realloc(  void* bf_arg0, c_int bf_arg1);
	[LinkName("sqlite3_realloc64")]
	public static extern void* realloc64(  void* bf_arg0, uint64 bf_arg1);
	[LinkName("sqlite3_free")]
	public static extern void free(  void* bf_arg0);
	[LinkName("sqlite3_msize")]
	public static extern uint64 msize(  void* bf_arg0);
	[LinkName("sqlite3_memory_used")]
	public static extern int64 memory_used();
	[LinkName("sqlite3_memory_highwater")]
	public static extern int64 memory_highwater(  c_int resetFlag);
	[LinkName("sqlite3_randomness")]
	public static extern void randomness(  c_int N, void* P);
	[LinkName("sqlite3_set_authorizer")]
	public static extern c_int set_authorizer(  sqlite3* bf_arg0, function c_int(void*, AuthorizerActionCodes, c_char*, c_char*, c_char*, c_char*) xAuth, void* pUserData);
	[LinkName("sqlite3_trace")]
	public static extern void* trace(  sqlite3* bf_arg0, function void(void*, c_char*) xTrace, void* bf_arg2);
	[LinkName("sqlite3_profile")]
	public static extern void* profile(  sqlite3* bf_arg0, function void(void*, c_char*, uint64) xProfile, void* bf_arg2);
	[LinkName("sqlite3_trace_v2")]
	public static extern c_int trace_v2(  sqlite3* bf_arg0, TraceEventCodes uMask, function c_int(c_uint, void*, void*, void*) xCallback, void* pCtx);
	[LinkName("sqlite3_progress_handler")]
	public static extern void progress_handler(  sqlite3* bf_arg0, c_int bf_arg1, function c_int(void*) bf_arg2, void* bf_arg3);
	[LinkName("sqlite3_open")]
	public static extern c_int open(  c_char* filename, sqlite3** ppDb);
	[LinkName("sqlite3_open16")]
	public static extern c_int open16(  void* filename, sqlite3** ppDb);
	[LinkName("sqlite3_open_v2")]
	public static extern c_int open_v2(  c_char* filename, sqlite3** ppDb, FileOpenFlags flags, c_char* zVfs);
	[LinkName("sqlite3_uri_parameter")]
	public static extern c_char* uri_parameter(  filename z, c_char* zParam);
	[LinkName("sqlite3_uri_boolean")]
	public static extern c_int uri_boolean(  filename z, c_char* zParam, c_int bDefault);
	[LinkName("sqlite3_uri_int64")]
	public static extern int64 uri_int64(  filename bf_arg0, c_char* bf_arg1, int64 bf_arg2);
	[LinkName("sqlite3_uri_key")]
	public static extern c_char* uri_key(  filename z, c_int N);
	[LinkName("sqlite3_filename_database")]
	public static extern c_char* filename_database(  filename bf_arg0);
	[LinkName("sqlite3_filename_journal")]
	public static extern c_char* filename_journal(  filename bf_arg0);
	[LinkName("sqlite3_filename_wal")]
	public static extern c_char* filename_wal(  filename bf_arg0);
	[LinkName("sqlite3_database_file_object")]
	public static extern file* database_file_object(  c_char* bf_arg0);
	[LinkName("sqlite3_create_filename")]
	public static extern filename create_filename(  c_char* zDatabase, c_char* zJournal, c_char* zWal, c_int nParam, c_char** azParam);
	[LinkName("sqlite3_free_filename")]
	public static extern void free_filename(  filename bf_arg0);
	[LinkName("sqlite3_errcode")]
	public static extern c_int errcode(  sqlite3* db);
	[LinkName("sqlite3_extended_errcode")]
	public static extern c_int extended_errcode(  sqlite3* db);
	[LinkName("sqlite3_errmsg")]
	public static extern c_char* errmsg(  sqlite3* bf_arg0);
	[LinkName("sqlite3_errmsg16")]
	public static extern void* errmsg16(  sqlite3* bf_arg0);
	[LinkName("sqlite3_errstr")]
	public static extern c_char* errstr(  c_int bf_arg0);
	[LinkName("sqlite3_error_offset")]
	public static extern c_int error_offset(  sqlite3* db);
	[LinkName("sqlite3_limit")]
	public static extern c_int limit(  sqlite3* bf_arg0, RuntimtLimitCategories id, c_int newVal);
	[LinkName("sqlite3_prepare")]
	public static extern c_int prepare(  sqlite3* db, c_char* zSql, c_int nByte, stmt** ppStmt, c_char** pzTail);
	[LinkName("sqlite3_prepare_v2")]
	public static extern c_int prepare_v2(  sqlite3* db, c_char* zSql, c_int nByte, stmt** ppStmt, c_char** pzTail);
	[LinkName("sqlite3_prepare_v3")]
	public static extern c_int prepare_v3(  sqlite3* db, c_char* zSql, c_int nByte, PrepareFlags prepFlags, stmt** ppStmt, c_char** pzTail);
	[LinkName("sqlite3_prepare16")]
	public static extern c_int prepare16(  sqlite3* db, void* zSql, c_int nByte, stmt** ppStmt, void** pzTail);
	[LinkName("sqlite3_prepare16_v2")]
	public static extern c_int prepare16_v2(  sqlite3* db, void* zSql, c_int nByte, stmt** ppStmt, void** pzTail);
	[LinkName("sqlite3_prepare16_v3")]
	public static extern c_int prepare16_v3(  sqlite3* db, void* zSql, c_int nByte, PrepareFlags prepFlags, stmt** ppStmt, void** pzTail);
	[LinkName("sqlite3_sql")]
	public static extern c_char* sql(  stmt* pStmt);
	[LinkName("sqlite3_expanded_sql")]
	public static extern c_char* expanded_sql(  stmt* pStmt);
	[LinkName("sqlite3_stmt_readonly")]
	public static extern c_int stmt_readonly(  stmt* pStmt);
	[LinkName("sqlite3_stmt_isexplain")]
	public static extern c_int stmt_isexplain(  stmt* pStmt);
	[LinkName("sqlite3_stmt_explain")]
	public static extern c_int stmt_explain(  stmt* pStmt, c_int eMode);
	[LinkName("sqlite3_stmt_busy")]
	public static extern c_int stmt_busy(  stmt* bf_arg0);
	[LinkName("sqlite3_bind_blob")]
	public static extern c_int bind_blob(  stmt* bf_arg0, c_int bf_arg1, void* bf_arg2, c_int n, function void(void*) bf_arg4);
	[LinkName("sqlite3_bind_blob64")]
	public static extern c_int bind_blob64(  stmt* bf_arg0, c_int bf_arg1, void* bf_arg2, uint64 bf_arg3, function void(void*) bf_arg4);
	[LinkName("sqlite3_bind_double")]
	public static extern c_int bind_double(  stmt* bf_arg0, c_int bf_arg1, double bf_arg2);
	[LinkName("sqlite3_bind_int")]
	public static extern c_int bind_int(  stmt* bf_arg0, c_int bf_arg1, c_int bf_arg2);
	[LinkName("sqlite3_bind_int64")]
	public static extern c_int bind_int64(  stmt* bf_arg0, c_int bf_arg1, int64 bf_arg2);
	[LinkName("sqlite3_bind_null")]
	public static extern c_int bind_null(  stmt* bf_arg0, c_int bf_arg1);
	[LinkName("sqlite3_bind_text")]
	public static extern c_int bind_text(  stmt* bf_arg0, c_int bf_arg1, c_char* bf_arg2, c_int bf_arg3, function void(void*) bf_arg4);
	[LinkName("sqlite3_bind_text16")]
	public static extern c_int bind_text16(  stmt* bf_arg0, c_int bf_arg1, void* bf_arg2, c_int bf_arg3, function void(void*) bf_arg4);
	[LinkName("sqlite3_bind_text64")]
	public static extern c_int bind_text64(  stmt* bf_arg0, c_int bf_arg1, c_char* bf_arg2, uint64 bf_arg3, function void(void*) bf_arg4, c_uchar encoding);
	[LinkName("sqlite3_bind_value")]
	public static extern c_int bind_value(  stmt* bf_arg0, c_int bf_arg1, value* bf_arg2);
	[LinkName("sqlite3_bind_pointer")]
	public static extern c_int bind_pointer(  stmt* bf_arg0, c_int bf_arg1, void* bf_arg2, c_char* bf_arg3, function void(void*) bf_arg4);
	[LinkName("sqlite3_bind_zeroblob")]
	public static extern c_int bind_zeroblob(  stmt* bf_arg0, c_int bf_arg1, c_int n);
	[LinkName("sqlite3_bind_zeroblob64")]
	public static extern c_int bind_zeroblob64(  stmt* bf_arg0, c_int bf_arg1, uint64 bf_arg2);
	[LinkName("sqlite3_bind_parameter_count")]
	public static extern c_int bind_parameter_count(  stmt* bf_arg0);
	[LinkName("sqlite3_bind_parameter_name")]
	public static extern c_char* bind_parameter_name(  stmt* bf_arg0, c_int bf_arg1);
	[LinkName("sqlite3_bind_parameter_index")]
	public static extern c_int bind_parameter_index(  stmt* bf_arg0, c_char* zName);
	[LinkName("sqlite3_clear_bindings")]
	public static extern c_int clear_bindings(  stmt* bf_arg0);
	[LinkName("sqlite3_column_count")]
	public static extern c_int column_count(  stmt* pStmt);
	[LinkName("sqlite3_column_name")]
	public static extern c_char* column_name(  stmt* bf_arg0, c_int N);
	[LinkName("sqlite3_column_name16")]
	public static extern void* column_name16(  stmt* bf_arg0, c_int N);
	[LinkName("sqlite3_column_database_name")]
	public static extern c_char* column_database_name(  stmt* bf_arg0, c_int bf_arg1);
	[LinkName("sqlite3_column_database_name16")]
	public static extern void* column_database_name16(  stmt* bf_arg0, c_int bf_arg1);
	[LinkName("sqlite3_column_table_name")]
	public static extern c_char* column_table_name(  stmt* bf_arg0, c_int bf_arg1);
	[LinkName("sqlite3_column_table_name16")]
	public static extern void* column_table_name16(  stmt* bf_arg0, c_int bf_arg1);
	[LinkName("sqlite3_column_origin_name")]
	public static extern c_char* column_origin_name(  stmt* bf_arg0, c_int bf_arg1);
	[LinkName("sqlite3_column_origin_name16")]
	public static extern void* column_origin_name16(  stmt* bf_arg0, c_int bf_arg1);
	[LinkName("sqlite3_column_decltype")]
	public static extern c_char* column_decltype(  stmt* bf_arg0, c_int bf_arg1);
	[LinkName("sqlite3_column_decltype16")]
	public static extern void* column_decltype16(  stmt* bf_arg0, c_int bf_arg1);
	[LinkName("sqlite3_step")]
	public static extern c_int step(  stmt* bf_arg0);
	[LinkName("sqlite3_data_count")]
	public static extern c_int data_count(  stmt* pStmt);
	[LinkName("sqlite3_column_blob")]
	public static extern void* column_blob(  stmt* bf_arg0, c_int iCol);
	[LinkName("sqlite3_column_double")]
	public static extern double column_double(  stmt* bf_arg0, c_int iCol);
	[LinkName("sqlite3_column_int")]
	public static extern c_int column_int(  stmt* bf_arg0, c_int iCol);
	[LinkName("sqlite3_column_int64")]
	public static extern int64 column_int64(  stmt* bf_arg0, c_int iCol);
	[LinkName("sqlite3_column_text")]
	public static extern c_uchar* column_text(  stmt* bf_arg0, c_int iCol);
	[LinkName("sqlite3_column_text16")]
	public static extern void* column_text16(  stmt* bf_arg0, c_int iCol);
	[LinkName("sqlite3_column_value")]
	public static extern value* column_value(  stmt* bf_arg0, c_int iCol);
	[LinkName("sqlite3_column_bytes")]
	public static extern c_int column_bytes(  stmt* bf_arg0, c_int iCol);
	[LinkName("sqlite3_column_bytes16")]
	public static extern c_int column_bytes16(  stmt* bf_arg0, c_int iCol);
	[LinkName("sqlite3_column_type")]
	public static extern c_int column_type(  stmt* bf_arg0, c_int iCol);
	[LinkName("sqlite3_finalize")]
	public static extern c_int finalize(  stmt* pStmt);
	[LinkName("sqlite3_reset")]
	public static extern c_int reset(  stmt* pStmt);
	[LinkName("sqlite3_create_function")]
	public static extern c_int create_function(  sqlite3* db, c_char* zFunctionName, c_int nArg, c_int eTextRep, void* pApp, function void(context*, c_int, value**) xFunc, function void(context*, c_int, value**) xStep, function void(context*) xFinal);
	[LinkName("sqlite3_create_function16")]
	public static extern c_int create_function16(  sqlite3* db, void* zFunctionName, c_int nArg, c_int eTextRep, void* pApp, function void(context*, c_int, value**) xFunc, function void(context*, c_int, value**) xStep, function void(context*) xFinal);
	[LinkName("sqlite3_create_function_v2")]
	public static extern c_int create_function_v2(  sqlite3* db, c_char* zFunctionName, c_int nArg, c_int eTextRep, void* pApp, function void(context*, c_int, value**) xFunc, function void(context*, c_int, value**) xStep, function void(context*) xFinal, function void(void*) xDestroy);
	[LinkName("sqlite3_create_window_function")]
	public static extern c_int create_window_function(  sqlite3* db, c_char* zFunctionName, c_int nArg, c_int eTextRep, void* pApp, function void(context*, c_int, value**) xStep, function void(context*) xFinal, function void(context*) xValue, function void(context*, c_int, value**) xInverse, function void(void*) xDestroy);
	[LinkName("sqlite3_aggregate_count")]
	public static extern c_int aggregate_count(  context* bf_arg0);
	[LinkName("sqlite3_expired")]
	public static extern c_int expired(  stmt* bf_arg0);
	[LinkName("sqlite3_transfer_bindings")]
	public static extern c_int transfer_bindings(  stmt* bf_arg0, stmt* bf_arg1);
	[LinkName("sqlite3_global_recover")]
	public static extern c_int global_recover();
	[LinkName("sqlite3_thread_cleanup")]
	public static extern void thread_cleanup();
	[LinkName("sqlite3_memory_alarm")]
	public static extern c_int memory_alarm(  function void(void*, int64, c_int) bf_arg0, void* bf_arg1, int64 bf_arg2);
	[LinkName("sqlite3_value_blob")]
	public static extern void* value_blob(  value* bf_arg0);
	[LinkName("sqlite3_value_double")]
	public static extern double value_double(  value* bf_arg0);
	[LinkName("sqlite3_value_int")]
	public static extern c_int value_int(  value* bf_arg0);
	[LinkName("sqlite3_value_int64")]
	public static extern int64 value_int64(  value* bf_arg0);
	[LinkName("sqlite3_value_pointer")]
	public static extern void* value_pointer(  value* bf_arg0, c_char* bf_arg1);
	[LinkName("sqlite3_value_text")]
	public static extern c_uchar* value_text(  value* bf_arg0);
	[LinkName("sqlite3_value_text16")]
	public static extern void* value_text16(  value* bf_arg0);
	[LinkName("sqlite3_value_text16le")]
	public static extern void* value_text16le(  value* bf_arg0);
	[LinkName("sqlite3_value_text16be")]
	public static extern void* value_text16be(  value* bf_arg0);
	[LinkName("sqlite3_value_bytes")]
	public static extern c_int value_bytes(  value* bf_arg0);
	[LinkName("sqlite3_value_bytes16")]
	public static extern c_int value_bytes16(  value* bf_arg0);
	[LinkName("sqlite3_value_type")]
	public static extern c_int value_type(  value* bf_arg0);
	[LinkName("sqlite3_value_numeric_type")]
	public static extern c_int value_numeric_type(  value* bf_arg0);
	[LinkName("sqlite3_value_nochange")]
	public static extern c_int value_nochange(  value* bf_arg0);
	[LinkName("sqlite3_value_frombind")]
	public static extern c_int value_frombind(  value* bf_arg0);
	[LinkName("sqlite3_value_encoding")]
	public static extern c_int value_encoding(  value* bf_arg0);
	[LinkName("sqlite3_value_subtype")]
	public static extern c_uint value_subtype(  value* bf_arg0);
	[LinkName("sqlite3_value_dup")]
	public static extern value* value_dup(  value* bf_arg0);
	[LinkName("sqlite3_value_free")]
	public static extern void value_free(  value* bf_arg0);
	[LinkName("sqlite3_aggregate_context")]
	public static extern void* aggregate_context(  context* bf_arg0, c_int nBytes);
	[LinkName("sqlite3_user_data")]
	public static extern void* user_data(  context* bf_arg0);
	[LinkName("sqlite3_context_db_handle")]
	public static extern sqlite3* context_db_handle(  context* bf_arg0);
	[LinkName("sqlite3_get_auxdata")]
	public static extern void* get_auxdata(  context* bf_arg0, c_int N);
	[LinkName("sqlite3_set_auxdata")]
	public static extern void set_auxdata(  context* bf_arg0, c_int N, void* bf_arg2, function void(void*) bf_arg3);
	[LinkName("sqlite3_get_clientdata")]
	public static extern void* get_clientdata(  sqlite3* bf_arg0, c_char* bf_arg1);
	[LinkName("sqlite3_set_clientdata")]
	public static extern c_int set_clientdata(  sqlite3* bf_arg0, c_char* bf_arg1, void* bf_arg2, function void(void*) bf_arg3);
	[LinkName("sqlite3_result_blob")]
	public static extern void result_blob(  context* bf_arg0, void* bf_arg1, c_int bf_arg2, function void(void*) bf_arg3);
	[LinkName("sqlite3_result_blob64")]
	public static extern void result_blob64(  context* bf_arg0, void* bf_arg1, uint64 bf_arg2, function void(void*) bf_arg3);
	[LinkName("sqlite3_result_double")]
	public static extern void result_double(  context* bf_arg0, double bf_arg1);
	[LinkName("sqlite3_result_error")]
	public static extern void result_error(  context* bf_arg0, c_char* bf_arg1, c_int bf_arg2);
	[LinkName("sqlite3_result_error16")]
	public static extern void result_error16(  context* bf_arg0, void* bf_arg1, c_int bf_arg2);
	[LinkName("sqlite3_result_error_toobig")]
	public static extern void result_error_toobig(  context* bf_arg0);
	[LinkName("sqlite3_result_error_nomem")]
	public static extern void result_error_nomem(  context* bf_arg0);
	[LinkName("sqlite3_result_error_code")]
	public static extern void result_error_code(  context* bf_arg0, c_int bf_arg1);
	[LinkName("sqlite3_result_int")]
	public static extern void result_int(  context* bf_arg0, c_int bf_arg1);
	[LinkName("sqlite3_result_int64")]
	public static extern void result_int64(  context* bf_arg0, int64 bf_arg1);
	[LinkName("sqlite3_result_null")]
	public static extern void result_null(  context* bf_arg0);
	[LinkName("sqlite3_result_text")]
	public static extern void result_text(  context* bf_arg0, c_char* bf_arg1, c_int bf_arg2, function void(void*) bf_arg3);
	[LinkName("sqlite3_result_text64")]
	public static extern void result_text64(  context* bf_arg0, c_char* bf_arg1, uint64 bf_arg2, function void(void*) bf_arg3, c_uchar encoding);
	[LinkName("sqlite3_result_text16")]
	public static extern void result_text16(  context* bf_arg0, void* bf_arg1, c_int bf_arg2, function void(void*) bf_arg3);
	[LinkName("sqlite3_result_text16le")]
	public static extern void result_text16le(  context* bf_arg0, void* bf_arg1, c_int bf_arg2, function void(void*) bf_arg3);
	[LinkName("sqlite3_result_text16be")]
	public static extern void result_text16be(  context* bf_arg0, void* bf_arg1, c_int bf_arg2, function void(void*) bf_arg3);
	[LinkName("sqlite3_result_value")]
	public static extern void result_value(  context* bf_arg0, value* bf_arg1);
	[LinkName("sqlite3_result_pointer")]
	public static extern void result_pointer(  context* bf_arg0, void* bf_arg1, c_char* bf_arg2, function void(void*) bf_arg3);
	[LinkName("sqlite3_result_zeroblob")]
	public static extern void result_zeroblob(  context* bf_arg0, c_int n);
	[LinkName("sqlite3_result_zeroblob64")]
	public static extern c_int result_zeroblob64(  context* bf_arg0, uint64 n);
	[LinkName("sqlite3_result_subtype")]
	public static extern void result_subtype(  context* bf_arg0, c_uint bf_arg1);
	[LinkName("sqlite3_create_collation")]
	public static extern c_int create_collation(  sqlite3* bf_arg0, c_char* zName, c_int eTextRep, void* pArg, function c_int(void*, c_int, void*, c_int, void*) xCompare);
	[LinkName("sqlite3_create_collation_v2")]
	public static extern c_int create_collation_v2(  sqlite3* bf_arg0, c_char* zName, c_int eTextRep, void* pArg, function c_int(void*, c_int, void*, c_int, void*) xCompare, function void(void*) xDestroy);
	[LinkName("sqlite3_create_collation16")]
	public static extern c_int create_collation16(  sqlite3* bf_arg0, void* zName, c_int eTextRep, void* pArg, function c_int(void*, c_int, void*, c_int, void*) xCompare);
	[LinkName("sqlite3_collation_needed")]
	public static extern c_int collation_needed(  sqlite3* bf_arg0, void* bf_arg1, function void(void*, sqlite3*, c_int, c_char*) bf_arg2);
	[LinkName("sqlite3_collation_needed16")]
	public static extern c_int collation_needed16(  sqlite3* bf_arg0, void* bf_arg1, function void(void*, sqlite3*, c_int, void*) bf_arg2);
	[LinkName("sqlite3_sleep")]
	public static extern c_int sleep(  c_int bf_arg0);
	[LinkName("sqlite3_win32_set_directory")]
	public static extern c_int win32_set_directory(  Win32DirectoryTypes type, void* zValue);
	[LinkName("sqlite3_win32_set_directory8")]
	public static extern c_int win32_set_directory8(  Win32DirectoryTypes type, c_char* zValue);
	[LinkName("sqlite3_win32_set_directory16")]
	public static extern c_int win32_set_directory16(  Win32DirectoryTypes type, void* zValue);
	[LinkName("sqlite3_get_autocommit")]
	public static extern c_int get_autocommit(  sqlite3* bf_arg0);
	[LinkName("sqlite3_db_handle")]
	public static extern sqlite3* db_handle(  stmt* bf_arg0);
	[LinkName("sqlite3_db_name")]
	public static extern c_char* db_name(  sqlite3* db, c_int N);
	[LinkName("sqlite3_db_filename")]
	public static extern filename db_filename(  sqlite3* db, c_char* zDbName);
	[LinkName("sqlite3_db_readonly")]
	public static extern c_int db_readonly(  sqlite3* db, c_char* zDbName);
	[LinkName("sqlite3_txn_state")]
	public static extern TransactionState txn_state(  sqlite3* bf_arg0, c_char* zSchema);
	[LinkName("sqlite3_next_stmt")]
	public static extern stmt* next_stmt(  sqlite3* pDb, stmt* pStmt);
	[LinkName("sqlite3_commit_hook")]
	public static extern void* commit_hook(  sqlite3* bf_arg0, function c_int(void*) bf_arg1, void* bf_arg2);
	[LinkName("sqlite3_rollback_hook")]
	public static extern void* rollback_hook(  sqlite3* bf_arg0, function void(void*) bf_arg1, void* bf_arg2);
	[LinkName("sqlite3_autovacuum_pages")]
	public static extern c_int autovacuum_pages(  sqlite3* db, function c_uint(void*, c_char*, c_uint, c_uint, c_uint) bf_arg1, void* bf_arg2, function void(void*) bf_arg3);
	[LinkName("sqlite3_update_hook")]
	public static extern void* update_hook(  sqlite3* bf_arg0, function void(void*, c_int, c_char*, c_char*, int64) bf_arg1, void* bf_arg2);
	[LinkName("sqlite3_enable_shared_cache")]
	public static extern c_int enable_shared_cache(  c_int bf_arg0);
	[LinkName("sqlite3_release_memory")]
	public static extern c_int release_memory(  c_int bf_arg0);
	[LinkName("sqlite3_db_release_memory")]
	public static extern c_int db_release_memory(  sqlite3* bf_arg0);
	[LinkName("sqlite3_soft_heap_limit64")]
	public static extern int64 soft_heap_limit64(  int64 N);
	[LinkName("sqlite3_hard_heap_limit64")]
	public static extern int64 hard_heap_limit64(  int64 N);
	[LinkName("sqlite3_soft_heap_limit")]
	public static extern void soft_heap_limit(  c_int N);
	[LinkName("sqlite3_table_column_metadata")]
	public static extern c_int table_column_metadata(  sqlite3* db, c_char* zDbName, c_char* zTableName, c_char* zColumnName, c_char** pzDataType, c_char** pzCollSeq, c_int* pNotNull, c_int* pPrimaryKey, c_int* pAutoinc);
	[LinkName("sqlite3_load_extension")]
	public static extern c_int load_extension(  sqlite3* db, c_char* zFile, c_char* zProc, c_char** pzErrMsg);
	[LinkName("sqlite3_enable_load_extension")]
	public static extern c_int enable_load_extension(  sqlite3* db, c_int onoff);
	[LinkName("sqlite3_auto_extension")]
	public static extern c_int auto_extension(  function void(void) xEntryPoint);
	[LinkName("sqlite3_cancel_auto_extension")]
	public static extern c_int cancel_auto_extension(  function void(void) xEntryPoint);
	[LinkName("sqlite3_reset_auto_extension")]
	public static extern void reset_auto_extension();
	[LinkName("sqlite3_create_module")]
	public static extern c_int create_module(  sqlite3* db, c_char* zName, module* p, void* pClientData);
	[LinkName("sqlite3_create_module_v2")]
	public static extern c_int create_module_v2(  sqlite3* db, c_char* zName, module* p, void* pClientData, function void(void*) xDestroy);
	[LinkName("sqlite3_drop_modules")]
	public static extern c_int drop_modules(  sqlite3* db, c_char** azKeep);
	[LinkName("sqlite3_declare_vtab")]
	public static extern c_int declare_vtab(  sqlite3* bf_arg0, c_char* zSQL);
	[LinkName("sqlite3_overload_function")]
	public static extern c_int overload_function(  sqlite3* bf_arg0, c_char* zFuncName, c_int nArg);
	[LinkName("sqlite3_blob_open")]
	public static extern c_int blob_open(  sqlite3* bf_arg0, c_char* zDb, c_char* zTable, c_char* zColumn, int64 iRow, c_int flags, blob** ppBlob);
	[LinkName("sqlite3_blob_reopen")]
	public static extern c_int blob_reopen(  blob* bf_arg0, int64 bf_arg1);
	[LinkName("sqlite3_blob_close")]
	public static extern c_int blob_close(  blob* bf_arg0);
	[LinkName("sqlite3_blob_bytes")]
	public static extern c_int blob_bytes(  blob* bf_arg0);
	[LinkName("sqlite3_blob_read")]
	public static extern c_int blob_read(  blob* bf_arg0, void* Z, c_int N, c_int iOffset);
	[LinkName("sqlite3_blob_write")]
	public static extern c_int blob_write(  blob* bf_arg0, void* z, c_int n, c_int iOffset);
	[LinkName("sqlite3_vfs_find")]
	public static extern vfs* vfs_find(  c_char* zVfsName);
	[LinkName("sqlite3_vfs_register")]
	public static extern c_int vfs_register(  vfs* bf_arg0, c_int makeDflt);
	[LinkName("sqlite3_vfs_unregister")]
	public static extern c_int vfs_unregister(  vfs* bf_arg0);
	[LinkName("sqlite3_mutex_alloc")]
	public static extern mutex* mutex_alloc(  c_int bf_arg0);
	[LinkName("sqlite3_mutex_free")]
	public static extern void mutex_free(  mutex* bf_arg0);
	[LinkName("sqlite3_mutex_enter")]
	public static extern void mutex_enter(  mutex* bf_arg0);
	[LinkName("sqlite3_mutex_try")]
	public static extern c_int mutex_try(  mutex* bf_arg0);
	[LinkName("sqlite3_mutex_leave")]
	public static extern void mutex_leave(  mutex* bf_arg0);
	[LinkName("sqlite3_mutex_held")]
	public static extern c_int mutex_held(  mutex* bf_arg0);
	[LinkName("sqlite3_mutex_notheld")]
	public static extern c_int mutex_notheld(  mutex* bf_arg0);
	[LinkName("sqlite3_db_mutex")]
	public static extern mutex* db_mutex(  sqlite3* bf_arg0);
	[LinkName("sqlite3_file_control")]
	public static extern c_int file_control(  sqlite3* bf_arg0, c_char* zDbName, FileControlOpcodes op, void* bf_arg3);
	[LinkName("sqlite3_test_control")]
	public static extern c_int test_control(  c_int op);
	[LinkName("sqlite3_keyword_count")]
	public static extern c_int keyword_count();
	[LinkName("sqlite3_keyword_name")]
	public static extern c_int keyword_name(  c_int bf_arg0, c_char** bf_arg1, c_int* bf_arg2);
	[LinkName("sqlite3_keyword_check")]
	public static extern c_int keyword_check(  c_char* bf_arg0, c_int bf_arg1);
	[LinkName("sqlite3_str_new")]
	public static extern str* str_new(  sqlite3* bf_arg0);
	[LinkName("sqlite3_str_finish")]
	public static extern c_char* str_finish(  str* bf_arg0);
	[LinkName("sqlite3_str_appendf")]
	public static extern void str_appendf(  str* bf_arg0, c_char* zFormat);
	[LinkName("sqlite3_str_vappendf")]
	public static extern void str_vappendf(  str* bf_arg0, c_char* zFormat, void* bf_arg2);
	[LinkName("sqlite3_str_append")]
	public static extern void str_append(  str* bf_arg0, c_char* zIn, c_int N);
	[LinkName("sqlite3_str_appendall")]
	public static extern void str_appendall(  str* bf_arg0, c_char* zIn);
	[LinkName("sqlite3_str_appendchar")]
	public static extern void str_appendchar(  str* bf_arg0, c_int N, c_char C);
	[LinkName("sqlite3_str_reset")]
	public static extern void str_reset(  str* bf_arg0);
	[LinkName("sqlite3_str_errcode")]
	public static extern c_int str_errcode(  str* bf_arg0);
	[LinkName("sqlite3_str_length")]
	public static extern c_int str_length(  str* bf_arg0);
	[LinkName("sqlite3_str_value")]
	public static extern c_char* str_value(  str* bf_arg0);
	[LinkName("sqlite3_status")]
	public static extern c_int status(  c_int op, c_int* pCurrent, c_int* pHighwater, c_int resetFlag);
	[LinkName("sqlite3_status64")]
	public static extern c_int status64(  c_int op, int64* pCurrent, int64* pHighwater, c_int resetFlag);
	[LinkName("sqlite3_db_status")]
	public static extern c_int db_status(  sqlite3* bf_arg0, c_int op, c_int* pCur, c_int* pHiwtr, c_int resetFlg);
	[LinkName("sqlite3_stmt_status")]
	public static extern c_int stmt_status(  stmt* bf_arg0, c_int op, c_int resetFlg);
	[LinkName("sqlite3_backup_init")]
	public static extern backup* backup_init(  sqlite3* pDest, c_char* zDestName, sqlite3* pSource, c_char* zSourceName);
	[LinkName("sqlite3_backup_step")]
	public static extern c_int backup_step(  backup* p, c_int nPage);
	[LinkName("sqlite3_backup_finish")]
	public static extern c_int backup_finish(  backup* p);
	[LinkName("sqlite3_backup_remaining")]
	public static extern c_int backup_remaining(  backup* p);
	[LinkName("sqlite3_backup_pagecount")]
	public static extern c_int backup_pagecount(  backup* p);
	[LinkName("sqlite3_unlock_notify")]
	public static extern c_int unlock_notify(  sqlite3* pBlocked, function void(void**, c_int) xNotify, void* pNotifyArg);
	[LinkName("sqlite3_stricmp")]
	public static extern c_int stricmp(  c_char* bf_arg0, c_char* bf_arg1);
	[LinkName("sqlite3_strnicmp")]
	public static extern c_int strnicmp(  c_char* bf_arg0, c_char* bf_arg1, c_int bf_arg2);
	[LinkName("sqlite3_strglob")]
	public static extern c_int strglob(  c_char* zGlob, c_char* zStr);
	[LinkName("sqlite3_strlike")]
	public static extern c_int strlike(  c_char* zGlob, c_char* zStr, c_uint cEsc);
	[LinkName("sqlite3_log")]
	public static extern void log(  c_int iErrCode, c_char* zFormat);
	[LinkName("sqlite3_wal_hook")]
	public static extern void* wal_hook(  sqlite3* bf_arg0, function c_int(void*, sqlite3*, c_char*, c_int) bf_arg1, void* bf_arg2);
	[LinkName("sqlite3_wal_autocheckpoint")]
	public static extern c_int wal_autocheckpoint(  sqlite3* db, c_int N);
	[LinkName("sqlite3_wal_checkpoint")]
	public static extern c_int wal_checkpoint(  sqlite3* db, c_char* zDb);
	[LinkName("sqlite3_wal_checkpoint_v2")]
	public static extern c_int wal_checkpoint_v2(  sqlite3* db, c_char* zDb, c_int eMode, c_int* pnLog, c_int* pnCkpt);
	[LinkName("sqlite3_vtab_config")]
	public static extern c_int vtab_config(  sqlite3* bf_arg0, c_int op);
	[LinkName("sqlite3_vtab_on_conflict")]
	public static extern c_int vtab_on_conflict(  sqlite3* bf_arg0);
	[LinkName("sqlite3_vtab_nochange")]
	public static extern c_int vtab_nochange(  context* bf_arg0);
	[LinkName("sqlite3_vtab_collation")]
	public static extern c_char* vtab_collation(  index_info* bf_arg0, c_int bf_arg1);
	[LinkName("sqlite3_vtab_distinct")]
	public static extern c_int vtab_distinct(  index_info* bf_arg0);
	[LinkName("sqlite3_vtab_in")]
	public static extern c_int vtab_in(  index_info* bf_arg0, c_int iCons, c_int bHandle);
	[LinkName("sqlite3_vtab_in_first")]
	public static extern c_int vtab_in_first(  value* pVal, value** ppOut);
	[LinkName("sqlite3_vtab_in_next")]
	public static extern c_int vtab_in_next(  value* pVal, value** ppOut);
	[LinkName("sqlite3_vtab_rhs_value")]
	public static extern c_int vtab_rhs_value(  index_info* bf_arg0, c_int bf_arg1, value** ppVal);
	[LinkName("sqlite3_stmt_scanstatus")]
	public static extern c_int stmt_scanstatus(  stmt* pStmt, c_int idx, c_int iScanStatusOp, void* pOut);
	[LinkName("sqlite3_stmt_scanstatus_v2")]
	public static extern c_int stmt_scanstatus_v2(  stmt* pStmt, c_int idx, c_int iScanStatusOp, c_int flags, void* pOut);
	[LinkName("sqlite3_stmt_scanstatus_reset")]
	public static extern void stmt_scanstatus_reset(  stmt* bf_arg0);
	[LinkName("sqlite3_db_cacheflush")]
	public static extern c_int db_cacheflush(  sqlite3* bf_arg0);
	[LinkName("sqlite3_system_errno")]
	public static extern c_int system_errno(  sqlite3* bf_arg0);
	[LinkName("sqlite3_snapshot_get")]
	public static extern c_int snapshot_get(  sqlite3* db, c_char* zSchema, snapshot** ppSnapshot);
	[LinkName("sqlite3_snapshot_open")]
	public static extern c_int snapshot_open(  sqlite3* db, c_char* zSchema, snapshot* pSnapshot);
	[LinkName("sqlite3_snapshot_free")]
	public static extern void snapshot_free(  snapshot* bf_arg0);
	[LinkName("sqlite3_snapshot_cmp")]
	public static extern c_int snapshot_cmp(  snapshot* p1, snapshot* p2);
	[LinkName("sqlite3_snapshot_recover")]
	public static extern c_int snapshot_recover(  sqlite3* db, c_char* zDb);
	[LinkName("sqlite3_serialize")]
	public static extern c_uchar* serialize(  sqlite3* db, c_char* zSchema, int64* piSize, c_uint mFlags);
	[LinkName("sqlite3_deserialize")]
	public static extern c_int deserialize(  sqlite3* db, c_char* zSchema, c_uchar* pData, int64 szDb, int64 szBuf, c_uint mFlags);

	[CRepr]
	public struct sqlite3;
	[CRepr]
	public struct file
	{
		public io_methods* pMethods;
	}
	[CRepr]
	public struct io_methods
	{
		public c_int iVersion;
		public function c_int(file*) xClose;
		public function c_int(file*, void*, c_int iAmt, int64 iOfst) xRead;
		public function c_int(file*, void*, c_int iAmt, int64 iOfst) xWrite;
		public function c_int(file*, int64 size) xTruncate;
		public function c_int(file*, SynchronizationTypeFlags flags) xSync;
		public function c_int(file*, int64* pSize) xFileSize;
		public function c_int(file*, FileLockingLevels) xLock;
		public function c_int(file*, FileLockingLevels) xUnlock;
		public function c_int(file*, c_int* pResOut) xCheckReservedLock;
		public function c_int(file*, FileControlOpcodes op, void* pArg) xFileControl;
		public function c_int(file*) xSectorSize;
		public function DeviceCharacteristics(file*) xDeviceCharacteristics;
		public function c_int(file*, c_int iPg, c_int pgsz, c_int, void**) xShmMap;
		public function c_int(file*, c_int offset, c_int n, XShmLockFlags flags) xShmLock;
		public function void(file*) xShmBarrier;
		public function c_int(file*, c_int deleteFlag) xShmUnmap;
		public function c_int(file*, int64 iOfst, c_int iAmt, void** pp) xFetch;
		public function c_int(file*, int64 iOfst, void* p) xUnfetch;
	}
	[CRepr]
	public struct mutex; //This one might not actually be opaque sqlite doesnt exactly define it as such, but its still only handled as a pointer
	[CRepr]
	public struct api_routines;
	[CRepr]
	public struct vfs
	{
		public c_int iVersion;
		public c_int szOsFile;
		public int mxPathname;
		public vfs*pNext;
		public c_char* zName;
		public void* pAppData;
		public function c_int(vfs*, filename zName, file*, FileOpenFlags flags, c_int* pOutFlags) xOpen;
		public function c_int(vfs*, c_char* zName, c_int syncDir) xDelete;
		public function c_int(vfs*, c_char* zName, XAcessFlags flags, c_int* pResOut) xAccess;
		public function c_int(vfs*, c_char* zName, c_int nOut, c_char* zOut) xFullPathname;
		public function void*(vfs*, c_char* zFilename) xDlOpen;
		public function void(vfs*, c_int nByte, c_char *zErrMsg) xDlError;
		public function function void(void)(vfs*, void*, c_char* zSymbol) xDlSym; //Function that returns a function which has no input and output
		public function void(vfs*, void*)xDlClose;
		public function c_int(vfs*, c_int nByte, c_char* zOut) xRandomness;
		public function c_int(vfs*, c_int microseconds) xSleep;
		public function c_int(vfs*, double*) xCurrentTime;
		public function c_int(vfs*, c_int, c_char*) xGetLastError;
		public function c_int(vfs*, int64*) xCurrentTimeInt64;
		public function c_int(vfs*, c_char* zName, function void(void)) xSetSystemCall;
		public function function void(void)(vfs*, c_char* zName) xGetSystemCall;
		public function c_char*(vfs*, c_char* zName) xNextSystemCall;
	}
	[CRepr]
	public struct mem_methods
	{
		public function void*(int) xMalloc;
		public function void(void*) xFree;
		public function void*(void*, int) xRealloc;
		public function int(void*) xSize;
		public function int(int) xRoundup;
		public function int(void*) xInit;
		public function void(void*) xShutdown;
		public void* pAppData;
	}
	[CRepr]
	public struct stmt;
	[CRepr, Union]
	public struct value
	{
		public c_int int;
		public float float;
		public c_char* string;
		//NULL
		public blob blob;
	}
	[CRepr]
	public struct context;

	[CRepr]
	public struct module
	{
		public c_int iVersion;
		public function c_int(sqlite3*, void*, c_int, c_char**, vtab**, c_char**) xCreate;
		public function c_int(sqlite3*, void*, c_int, c_char**, vtab**, c_char**) xConnect;
		public function c_int(vtab*, index_info*) xBestIndex;
		public function c_int(vtab*) xDisconnect;
		public function c_int(vtab*) xDestroy;
		public function c_int(vtab*, vtab_cursor**) xOpen;
		public function c_int(vtab_cursor*) xClose;
		public function c_int(vtab_cursor*, c_int, c_char*, c_int, value**) xFilter;
		public function c_int(vtab_cursor*) xNext;
		public function c_int(vtab_cursor*) xEof;
		public function c_int(vtab_cursor*, context*, int) xColumn;
		public function c_int(vtab_cursor*, int64*) xRowid;
		public function c_int(vtab*, c_int, value**, int64*) xUpdate;
		public function c_int(vtab*) xBegin;
		public function c_int(vtab*) xSync;
		public function c_int(vtab*) xCommit;
		public function c_int(vtab*) xRollback;
		public function c_int(vtab*, c_int, c_char*, function void(context*, c_int, value**), void**) xFindFunction;
		public function c_int(vtab*, c_char*) xRename;
		public function c_int(vtab*, int) xSavepoint;
		public function c_int(vtab*, int) xRelease;
		public function c_int(vtab*, int) xRollbackTo;
		public function c_int(c_char*) xShadowName;
		public function c_int(vtab*, c_char*, c_char*, c_int, c_char**) xIntegrity;
	}
	[CRepr]
	public struct index_info
	{
		public c_int nConstraint;
		public index_constraint* aConstraint;
		public c_int nOrderBy;
		public index_orderby* aOrderBy;
		public index_constraint_usage *aConstraintUsage;
		c_int idxNum;
		c_char* idxStr;
		c_int needToFreeIdxStr;
		c_int orderByConsumed;
		double estimatedCost;
		int64 estimatedRows;
		c_int idxFlags;
		uint64 colUsed;
	}
	[CRepr]
	public struct index_constraint
	{
		public c_int iColumn;
		public c_uchar op;
		public c_uchar usable;
		public c_int iTermOffset;
		public index_constraint* aConstraint;
		public c_int nOrderBy;
	}
	[CRepr]
	public struct index_orderby
	{
		public c_int iColumn;
		public c_uchar desc;
	}
	[CRepr]
	public struct index_constraint_usage
	{
		public c_int argvIndex;
		public c_uchar omit;
		public c_int idxNum;
		public c_char* idxStr;
		public c_int needToFreeIdxStr;
		public c_int orderByConsumed;
		public double estimatedCost;
		public int64 estimatedRows;
		public c_int idxFlags;
		public uint64 colUsed;
	}
	[CRepr]
	public struct vtab
	{
		public module* pModule;
		public c_int nRef;
		public c_char* zErrMsg;
	}
	[CRepr]
	public struct vtab_cursor
	{
		public vtab* pVtab;
	}
	[CRepr]
	public struct blob;
	[CRepr]
	public struct mutex_methods
	{
		public function c_int(void) xMutexInit;
		public function c_int(void) xMutexEnd;
		public function mutex*(c_int) xMutexAlloc;
		public function void(mutex*) xMutexFree;
		public function void(mutex*) xMutexEnter;
		public function c_int(mutex*) xMutexTry;
		public function void(mutex*) xMutexLeave;
		public function c_int(mutex*) xMutexHeld;
		public function c_int(mutex*) xMutexNotheld;
	}
	[CRepr]
	public struct str;
	[CRepr]
	public struct pcache;
	[CRepr]
	public struct pcache_page
	{
		public void* pBuf;
		public void* pExtra;
	}
	[CRepr]
	public struct pcache_methods2
	{
		public c_int iVersion;
		public void* pArg;
		public function int(void*) xInit;
		public function void(void*) xShutdown;
		public function pcache*(c_int, c_int, c_int) xCreate;
		public function void(pcache*, c_int) xCachesize;
		public function c_int(pcache*) xPagecount;
		public function pcache_page*(pcache*, c_uint, c_int) xFetch;
		public function void(pcache*, pcache_page*, c_int) xUnpin;
		public function void(pcache*, pcache_page*, c_uint, c_uint) xRekey;
		public function void(pcache*, c_uint) xTruncate;
		public function void(pcache*) xDestroy;
		public function void(pcache*) xShrink;
	}
	[CRepr]
	public struct pcache_methods
	{
		public void* pArg;
		public function c_int(void*) xInit;
		public function void(void*) xShutdown;
		public function pcache*(c_int, c_int) xCreate;
		public function void(pcache*, c_int) xCachesize;
		public function c_int(pcache*) xPagecount;
		public function void*(pcache*, c_uint, c_int) xFetch;
		public function void(pcache*, void*, c_int) xUnpin;
		public function void(pcache*, void*, c_uint, c_uint) xRekey;
		public function void(pcache*, c_uint) xTruncate;
		public function void(pcache*) xDestroy;
	}
	[CRepr]
	public struct backup;
	[CRepr]
	public struct snapshot
	{
		public c_uchar[48] hidden;
	}
	typealias filename = c_char*;
}