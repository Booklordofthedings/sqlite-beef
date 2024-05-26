namespace Sqlite3;

using System;
using System.Interop;

static
{
	public const c_char* VERSION = "3.46.0";
	public const c_int VERSION_NUMBER = 3046000;
	public const c_char* SOURCE_ID = "2024-05-08 17:57:45 d030c87c4d410e9ca2b90ec7cb63e752f4490c60e2feac84f233861593142c7d";

	[AllowDuplicates]
	public enum ResultCode : c_int
	{
		OK = 0,
		ERROR = 1,
		INTERNAL =  2,
		PERM = 3,
		ABORT = 4,
		BUSY = 5,
		LOCKED = 6,
		NOMEM = 7,
		READONLY = 8,
		INTERRUPT = 9,
		IOERR = 10,
		CORRUPT = 11,
		NOTFOUND = 12,
		FULL = 13,
		CANTOPEN = 14,
		PROTOCOL = 15,
		EMPTY = 16,
		SCHEMA = 17,
		TOOBIG = 18,
		CONSTRAINT = 19,
		MISMATCH = 20,
		MISUSE = 21,
		NOLFS = 22,
		AUTH = 23,
		FORMAT = 24,
		RANGE = 25,
		NOTADB = 26,
		NOTICE = 27,
		WARNING = 28,
		ROW = 100,
		DONE = 101,

		//Extended error codes

		MISSING_COLLSEQ = (ERROR | (1 << 8)),
		RETRY = (ERROR | (2 << 8)),
		SNAPSHOT = (ERROR | (3 << 8)),
		IOERR_READ = (IOERR | (1 << 8)),
		SHORT_READ = (IOERR | (2 << 8)),
		WRITE = (IOERR | (3 << 8)),
		FSYNC = (IOERR | (4 << 8)),
		DIR_FSYNC = (IOERR | (5 << 8)),
		TRUNCATE = (IOERR | (6 << 8)),
		FSTAT = (IOERR | (7 << 8)),
		UNLOCK = (IOERR | (8 << 8)),
		RDLOCK =  (IOERR | (9 << 8)),
		DELETE  = (IOERR | (10 << 8)),
		BLOCKED = (IOERR | (11 << 8)),
		IOERR_NOMEM  = (IOERR | (12 << 8)),
		IOERR_ACCESS =  (IOERR | (13 << 8)),
		IOERR_CHECKRESERVEDLOCK = (IOERR | (14 << 8)),
		IOERR_LOCK  = (IOERR | (15 << 8)),
		IOERR_CLOSE  = (IOERR | (16 << 8)),
		IOERR_DIR_CLOSE = (IOERR | (17 << 8)),
		IOERR_SHMOPEN = (IOERR | (18 << 8)),
		IOERR_SHMSIZE = (IOERR | (19 << 8)),
		IOERR_SHMLOCK = (IOERR | (20 << 8)),
		IOERR_SHMMAP  = (IOERR | (21 << 8)),
		IOERR_SEEK   = (IOERR | (22 << 8)),
		IOERR_DELETE_NOENT = (IOERR | (23 << 8)),
		IOERR_MMAP  = (IOERR | (24 << 8)),
		IOERR_GETTEMPPATH = (IOERR | (25 << 8)),
		IOERR_CONVPATH = (IOERR | (26 << 8)),
		IOERR_VNODE  = (IOERR | (27 << 8)),
		IOERR_AUTH  = (IOERR | (28 << 8)),
		IOERR_BEGIN_ATOMIC = (IOERR | (29 << 8)),
		IOERR_COMMIT_ATOMIC = (IOERR | (30 << 8)),
		IOERR_ROLLBACK_ATOMIC = (IOERR | (31 << 8)),
		IOERR_DATA   = (IOERR | (32 << 8)),
		IOERR_CORRUPTFS = (IOERR | (33 << 8)),
		IOERR_IN_PAGE = (IOERR | (34 << 8)),
		LOCKED_SHAREDCACHE = (LOCKED | (1 << 8)),
		LOCKED_VTAB  = (LOCKED | (2 << 8)),
		BUSY_RECOVERY = (BUSY | (1 << 8)),
		BUSY_SNAPSHOT = (BUSY | (2 << 8)),
		BUSY_TIMEOUT  = (BUSY | (3 << 8)),
		CANTOPEN_NOTEMPDIR = (CANTOPEN | (1 << 8)),
		CANTOPEN_ISDIR = (CANTOPEN | (2 << 8)),
		CANTOPEN_FULLPATH = (CANTOPEN | (3 << 8)),
		CANTOPEN_CONVPATH = (CANTOPEN | (4 << 8)),
		CANTOPEN_DIRTYWAL = (CANTOPEN | (5 << 8)),
		CANTOPEN_SYMLINK  = (CANTOPEN | (6 << 8)),
		CORRUPT_VTAB  = (CORRUPT | (1 << 8)),
		CORRUPT_SEQUENCE = (CORRUPT | (2 << 8)),
		CORRUPT_INDEX  = (CORRUPT | (3 << 8)),
		READONLY_RECOVERY = (READONLY | (1 << 8)),
		READONLY_CANTLOCK = (READONLY | (2 << 8)),
		READONLY_ROLLBACK = (READONLY | (3 << 8)),
		READONLY_DBMOVED  = (READONLY | (4 << 8)),
		READONLY_CANTINIT = (READONLY | (5 << 8)),
		READONLY_DIRECTORY = (READONLY | (6 << 8)),
		ABORT_ROLLBACK  = (ABORT | (2 << 8)),
		CONSTRAINT_CHECK  = (CONSTRAINT | (1 << 8)),
		CONSTRAINT_COMMITHOOK = (CONSTRAINT | (2 << 8)),
		CONSTRAINT_FOREIGNKEY = (CONSTRAINT | (3 << 8)),
		CONSTRAINT_FUNCTION = (CONSTRAINT | (4 << 8)),
		CONSTRAINT_NOTNULL = (CONSTRAINT | (5 << 8)),
		CONSTRAINT_PRIMARYKEY = (CONSTRAINT | (6 << 8)),
		CONSTRAINT_TRIGGER = (CONSTRAINT | (7 << 8)),
		CONSTRAINT_UNIQUE = (CONSTRAINT | (8 << 8)),
		CONSTRAINT_VTAB = (CONSTRAINT | (9 << 8)),
		CONSTRAINT_ROWID = (CONSTRAINT | (10 << 8)),
		CONSTRAINT_PINNED = (CONSTRAINT | (11 << 8)),
		CONSTRAINT_DATATYPE = (CONSTRAINT | (12 << 8)),
		NOTICE_RECOVER_WAL = (NOTICE | (1 << 8)),
		NOTICE_RECOVER_ROLLBACK = (NOTICE | (2 << 8)),
		NOTICE_RBU   = (NOTICE | (3 << 8)),
		WARNING_AUTOINDEX = (WARNING | (1 << 8)),
		AUTH_USER   = (AUTH | (1 << 8)),
		OK_LOAD_PERMANENTLY = (OK | (1 << 8)),
		OK_SYMLINK   = (OK | (2 << 8)),
	}

	[AllowDuplicates]
	enum FileOpenFlags : c_int
	{
		READONLY         = 0x00000001,
		READWRITE        = 0x00000002,
		CREATE           = 0x00000004,
		DELETEONCLOSE    = 0x00000008,
		EXCLUSIVE        = 0x00000010,
		AUTOPROXY        = 0x00000020,
		URI              = 0x00000040,
		MEMORY           = 0x00000080,
		MAIN_DB          = 0x00000100,
		TEMP_DB          = 0x00000200,
		TRANSIENT_DB     = 0x00000400,
		MAIN_JOURNAL     = 0x00000800,
		TEMP_JOURNAL     = 0x00001000,
		SUBJOURNAL       = 0x00002000,
		SUPER_JOURNAL    = 0x00004000,
		NOMUTEX          = 0x00008000,
		FULLMUTEX        = 0x00010000,
		SHAREDCACHE      = 0x00020000,
		PRIVATECACHE     = 0x00040000,
		WAL              = 0x00080000,
		NOFOLLOW         = 0x01000000,
		EXRESCODE        = 0x02000000,
		MASTER_JOURNAL   = 0x00004000,

	}

	public enum DeviceCharacteristics : c_int
	{
		ATOMIC                 = 0x00000001,
		ATOMIC512              = 0x00000002,
		ATOMIC1K               = 0x00000004,
		ATOMIC2K               = 0x00000008,
		ATOMIC4K               = 0x00000010,
		ATOMIC8K               = 0x00000020,
		ATOMIC16K              = 0x00000040,
		ATOMIC32K              = 0x00000080,
		ATOMIC64K              = 0x00000100,
		SAFE_APPEND            = 0x00000200,
		SEQUENTIAL             = 0x00000400,
		UNDELETABLE_WHEN_OPEN  = 0x00000800,
		POWERSAFE_OVERWRITE    = 0x00001000,
		IMMUTABLE              = 0x00002000,
		BATCH_ATOMIC           = 0x00004000,
	}

	public enum FileLockingLevels : c_int
	{
		NONE          = 0,
		SHARED        = 1,
		RESERVED      = 2,
		PENDING       = 3,
		EXCLUSIVE     = 4,
	}

	public enum SynchronizationTypeFlags : c_int
	{
		NORMAL        = 0x00002,
		FULL          = 0x00003,
		DATAONLY      = 0x00010,
	}

	public enum FileControlOpcodes : c_int
	{
		LOCKSTATE               = 1,
		GET_LOCKPROXYFILE       = 2,
		SET_LOCKPROXYFILE       = 3,
		LAST_ERRNO              = 4,
		SIZE_HINT               = 5,
		CHUNK_SIZE              = 6,
		FILE_POINTER            = 7,
		SYNC_OMITTED            = 8,
		WIN32_AV_RETRY          = 9,
		PERSIST_WAL            = 10,
		OVERWRITE              = 11,
		VFSNAME                = 12,
		POWERSAFE_OVERWRITE    = 13,
		PRAGMA                 = 14,
		BUSYHANDLER            = 15,
		TEMPFILENAME           = 16,
		MMAP_SIZE              = 18,
		TRACE                  = 19,
		HAS_MOVED              = 20,
		SYNC                   = 21,
		COMMIT_PHASETWO        = 22,
		WIN32_SET_HANDLE       = 23,
		WAL_BLOCK              = 24,
		ZIPVFS                 = 25,
		RBU                    = 26,
		VFS_POINTER            = 27,
		JOURNAL_POINTER        = 28,
		WIN32_GET_HANDLE       = 29,
		PDB                    = 30,
		BEGIN_ATOMIC_WRITE     = 31,
		COMMIT_ATOMIC_WRITE    = 32,
		ROLLBACK_ATOMIC_WRITE  = 33,
		LOCK_TIMEOUT           = 34,
		DATA_VERSION           = 35,
		SIZE_LIMIT             = 36,
		CKPT_DONE              = 37,
		RESERVE_BYTES          = 38,
		CKPT_START             = 39,
		EXTERNAL_READER        = 40,
		CKSM_FILE              = 41,
		RESET_CACHE            = 42,
	}

	public enum XAcessFlags : c_int
	{
		EXISTS    = 0,
		READWRITE = 1,
		READ      = 2,
	}

	[AllowDuplicates]
	public enum XShmLockFlags : c_int
	{
		UNLOCK       = 1,
		LOCK         = 2,
		SHARED       = 4,
		EXCLUSIVE    = 8,
		NLOCK        = 8,
	}

	public enum ConfigOptions : c_int
	{
		SINGLETHREAD         = 1,
		MULTITHREAD          = 2,
		SERIALIZED           = 3,
		MALLOC               = 4,
		GETMALLOC            = 5,
		SCRATCH              = 6,
		PAGECACHE            = 7,
		HEAP                 = 8,
		MEMSTATUS            = 9,
		MUTEX               = 10,
		GETMUTEX            = 11,
		LOOKASIDE           = 13,
		PCACHE              = 14,
		GETPCACHE           = 15,
		LOG                 = 16,
		URI                 = 17,
		PCACHE2             = 18,
		GETPCACHE2          = 19,
		COVERING_INDEX_SCAN = 20,
		SQLLOG              = 21,
		MMAP_SIZE           = 22,
		WIN32_HEAPSIZE      = 23,
		PCACHE_HDRSZ        = 24,
		PMASZ               = 25,
		STMTJRNL_SPILL      = 26,
		SMALL_MALLOC        = 27,
		SORTERREF_SIZE      = 28,
		MEMDB_MAXSIZE       = 29,
		ROWID_IN_VIEW       = 30,
	}

	[AllowDuplicates]
	public enum DatabaseConnectionConfigOptions : c_int
	{
		MAINDBNAME            = 1000,
		LOOKASIDE             = 1001,
		ENABLE_FKEY           = 1002,
		ENABLE_TRIGGER        = 1003,
		ENABLE_FTS3_TOKENIZER = 1004,
		ENABLE_LOAD_EXTENSION = 1005,
		NO_CKPT_ON_CLOSE      = 1006,
		ENABLE_QPSG           = 1007,
		TRIGGER_EQP           = 1008,
		RESET_DATABASE        = 1009,
		DEFENSIVE             = 1010,
		WRITABLE_SCHEMA       = 1011,
		LEGACY_ALTER_TABLE    = 1012,
		DQS_DML               = 1013,
		DQS_DDL               = 1014,
		ENABLE_VIEW           = 1015,
		LEGACY_FILE_FORMAT    = 1016,
		TRUSTED_SCHEMA        = 1017,
		STMT_SCANSTATUS       = 1018,
		REVERSE_SCANORDER     = 1019,
		MAX                   = 1019,
	}

	public enum AuthorizerReturnCodes : c_int
	{
		DENY   = 1,
		IGNORE = 2,
	}

	public enum AuthorizerActionCodes : c_int
	{
		CREATE_INDEX          = 1,
		CREATE_TABLE          = 2,
		CREATE_TEMP_INDEX     = 3,
		CREATE_TEMP_TABLE     = 4,
		CREATE_TEMP_TRIGGER   = 5,
		CREATE_TEMP_VIEW      = 6,
		CREATE_TRIGGER        = 7,
		CREATE_VIEW           = 8,
		DELETE                = 9,
		DROP_INDEX           = 10,
		DROP_TABLE           = 11,
		DROP_TEMP_INDEX      = 12,
		DROP_TEMP_TABLE      = 13,
		DROP_TEMP_TRIGGER    = 14,
		DROP_TEMP_VIEW       = 15,
		DROP_TRIGGER         = 16,
		DROP_VIEW            = 17,
		INSERT               = 18,
		PRAGMA               = 19,
		READ                 = 20,
		SELECT               = 21,
		TRANSACTION          = 22,
		UPDATE               = 23,
		ATTACH               = 24,
		DETACH               = 25,
		ALTER_TABLE          = 26,
		REINDEX              = 27,
		ANALYZE              = 28,
		CREATE_VTABLE        = 29,
		DROP_VTABLE          = 30,
		FUNCTION             = 31,
		SAVEPOINT            = 32,
		COPY                  = 0,
		RECURSIVE            = 33,
	}

	public enum TraceEventCodes : c_int
	{
		STMT       = 0x01,
		PROFILE    = 0x02,
		ROW        = 0x04,
		CLOSE      = 0x08,
	}
	public enum RuntimtLimitCategories
	{
		LENGTH                    = 0,
		SQL_LENGTH                = 1,
		COLUMN                    = 2,
		EXPR_DEPTH                = 3,
		COMPOUND_SELECT           = 4,
		VDBE_OP                   = 5,
		FUNCTION_ARG              = 6,
		ATTACHED                  = 7,
		LIKE_PATTERN_LENGTH       = 8,
		VARIABLE_NUMBER           = 9,
		TRIGGER_DEPTH            = 10,
		WORKER_THREADS           = 11,
	}

	public enum PrepareFlags : c_int
	{
		PERSISTENT              = 0x01,
		NORMALIZE              = 0x02,
		NO_VTAB                 = 0x04,
	}

	public enum Datatypes : c_int
	{
		INTEGER  = 1,
		FLOAT    = 2,
		BLOB     = 4,
		NULL     = 5,
		SQLITE3_TEXT     = 3,
	}
	public enum TextEncoding : c_int
	{
		UTF8           = 1,
		UTF16LE        = 2,
		UTF16BE        = 3,
		UTF16          = 4,
		ANY            = 5,
		UTF16_ALIGNED  = 8,
	}

	public enum FunctionFlags : c_int
	{
		DETERMINISTIC    = 0x0000000800,
		DIRECTONLY       = 0x0000080000,
		SUBTYPE          = 0x0000100000,
		INNOCUOUS        = 0x0000200000,
		RESULT_SUBTYPE   = 0x0001000000,
	}

	public enum Win32DirectoryTypes : c_ulong
	{
		DATA_DIRECTORY_TYPE  = 1,
		TEMP_DIRECTORY_TYPE  = 2,
	}


	public enum TransactionState : c_int
	{
		NONE  = 0,
		READ  = 1,
		WRITE = 2,
	}

	public enum VirtualTableScanFlags : c_int
	{
		INDEX_SCAN_UNIQUE      = 1,
	}

	public enum VirtualTableConstraintOpCodes : c_int
	{
		EQ          = 2,
		GT          = 4,
		LE          = 8,
		LT         = 16,
		GE         = 32,
		MATCH      = 64,
		LIKE       = 65,
		GLOB       = 66,
		REGEXP     = 67,
		NE         = 68,
		ISNOT      = 69,
		ISNOTNULL  = 70,
		ISNULL     = 71,
		IS         = 72,
		LIMIT      = 73,
		OFFSET     = 74,
		FUNCTION  = 150,
	}

	[AllowDuplicates]
	public enum MutexTypes : c_int
	{
		FAST             = 0,
		RECURSIVE        = 1,
		STATIC_MAIN      = 2,
		STATIC_MEM       = 3,
		STATIC_MEM2      = 4,
		STATIC_OPEN      = 4,
		STATIC_PRNG      = 5,
		STATIC_LRU       = 6,
		STATIC_LRU2      = 7,
		STATIC_PMEM      = 7,
		STATIC_APP1      = 8,
		STATIC_APP2      = 9,
		STATIC_APP3     = 10,
		STATIC_VFS1     = 11,
		STATIC_VFS2     = 12,
		STATIC_VFS3     = 13,
		STATIC_MASTER    = 2,
	}

	[AllowDuplicates]
	public enum TestingInterfaceOpCodes : c_int
	{
		FIRST                    = 5,
		PRNG_SAVE                = 5,
		PRNG_RESTORE             = 6,
		PRNG_RESET               = 7,
		FK_NO_ACTION             = 7,
		BITVEC_TEST              = 8,
		FAULT_INSTALL            = 9,
		BENIGN_MALLOC_HOOKS     = 10,
		PENDING_BYTE            = 11,
		ASSERT                  = 12,
		ALWAYS                  = 13,
		RESERVE                 = 14,
		JSON_SELFCHECK          = 14,
		OPTIMIZATIONS           = 15,
		ISKEYWORD               = 16,
		SCRATCHMALLOC           = 17,
		INTERNAL_FUNCTIONS      = 17,
		LOCALTIME_FAULT         = 18,
		EXPLAIN_STMT            = 19,
		ONCE_RESET_THRESHOLD    = 19,
		NEVER_CORRUPT           = 20,
		VDBE_COVERAGE           = 21,
		BYTEORDER               = 22,
		ISINIT                  = 23,
		SORTER_MMAP             = 24,
		IMPOSTER                = 25,
		PARSER_COVERAGE         = 26,
		RESULT_INTREAL          = 27,
		PRNG_SEED               = 28,
		EXTRA_SCHEMA_CHECKS     = 29,
		SEEK_COUNT              = 30,
		TRACEFLAGS              = 31,
		TUNE                    = 32,
		LOGEST                  = 33,
		USELONGDOUBLE           = 34,
		LAST                    = 34,
	}

	public enum StatusParameters : c_int
	{
		MEMORY_USED          = 0,
		PAGECACHE_USED       = 1,
		PAGECACHE_OVERFLOW   = 2,
		SCRATCH_USED         = 3,
		SCRATCH_OVERFLOW     = 4,
		MALLOC_SIZE          = 5,
		PARSER_STACK         = 6,
		PAGECACHE_SIZE       = 7,
		SCRATCH_SIZE         = 8,
		MALLOC_COUNT         = 9,
	}

	[AllowDuplicates]
	public enum DBStatusParameters : c_int
	{
		LOOKASIDE_USED       = 0,
		CACHE_USED           = 1,
		SCHEMA_USED          = 2,
		STMT_USED            = 3,
		LOOKASIDE_HIT        = 4,
		LOOKASIDE_MISS_SIZE  = 5,
		LOOKASIDE_MISS_FULL  = 6,
		CACHE_HIT            = 7,
		CACHE_MISS           = 8,
		CACHE_WRITE          = 9,
		DEFERRED_FKS        = 10,
		CACHE_USED_SHARED   = 11,
		CACHE_SPILL         = 12,
		MAX                 = 12,
	}

	public enum PreparedStatementsStatusParameters : c_int
	{
		FULLSCAN_STEP     = 1,
		SORT              = 2,
		AUTOINDEX         = 3,
		VM_STEP           = 4,
		REPREPARE         = 5,
		RUN               = 6,
		FILTER_MISS       = 7,
		FILTER_HIT        = 8,
		MEMUSED           = 99,
	}

	public enum CheckpointModeValues : c_int
	{
		PASSIVE  = 0,
		FULL     = 1,
		RESTART  = 2,
		TRUNCATE = 3,
	}

	public enum VirtualTableConfigurationOptions : c_int
	{
		CONSTRAINT_SUPPORT = 1,
		INNOCUOUS          = 2,
		DIRECTONLY         = 3,
		USES_ALL_SCHEMAS   = 4,
	}


	public enum ConflictResultionModes : c_int
	{
		ROLLBACK = 1,
		FAIL     = 3,
		REPLACE  = 5,
	}

	public const c_int SCANSTAT_COMPLEX = 0x0001;
	public enum PreparedStatementScanStatusOpCodes : c_int
	{
		NLOOP    = 0,
		NVISIT   = 1,
		EST      = 2,
		NAME     = 3,
		EXPLAIN  = 4,
		SELECTID = 5,
		PARENTID = 6,
		NCYCLE   = 7,
	}


	public const c_int SERIALIZE_NOCOPY = 0x001;

	public enum DeserializeFlags : c_int
	{
		FREEONCLOSE = 1,
		RESIZEABLE  = 2,
		READONLY    = 4,
	}
}
