

-------------------------------------------------------------------------------
--  disk file
-------------------------------------------------------------------------------
CREATE TABLE DISK_FILE(
    ID BIGINT NOT NULL,
    NAME VARCHAR(200),
    FILE_SIZE BIGINT,
    VALUE VARCHAR(200),
    TYPE VARCHAR(10),
    PART_INDEX INT,
    FILE_CODE BIGINT,
    REF_COUNT INT,
    HASH_CODE VARCHAR(64),
    CREATOR VARCHAR(64),
    CREATE_TIME DATETIME,
    UPDATER VARCHAR(64),
    UPDATE_TIME DATETIME,
    STATUS VARCHAR(50),
    USER_ID VARCHAR(64),
    FOLDER_PATH VARCHAR(200),

    CONSTRAINT PK_DISK_FILE PRIMARY KEY(ID)
);

CREATE INDEX IDX_DISK_FILE_HASHCODE ON DISK_FILE(HASH_CODE);

COMMENT ON TABLE DISK_FILE IS '文件';
COMMENT ON COLUMN DISK_FILE.ID IS '主键';
COMMENT ON COLUMN DISK_FILE.NAME IS '名称';
COMMENT ON COLUMN DISK_FILE.FILE_SIZE IS '文件大小';
COMMENT ON COLUMN DISK_FILE.VALUE IS 'oss中的key';
COMMENT ON COLUMN DISK_FILE.TYPE IS '完整文件还是分片';
COMMENT ON COLUMN DISK_FILE.PART_INDEX IS '分片索引';
COMMENT ON COLUMN DISK_FILE.FILE_CODE IS '分片对应的完整文件code';
COMMENT ON COLUMN DISK_FILE.REF_COUNT IS '被引用数量';
COMMENT ON COLUMN DISK_FILE.HASH_CODE IS '哈希md5';
COMMENT ON COLUMN DISK_FILE.CREATOR IS '创建人';
COMMENT ON COLUMN DISK_FILE.CREATE_TIME IS '创建时间';
COMMENT ON COLUMN DISK_FILE.UPDATER IS '修改人';
COMMENT ON COLUMN DISK_FILE.UPDATE_TIME IS '修改时间';
COMMENT ON COLUMN DISK_FILE.STATUS IS '状态';
COMMENT ON COLUMN DISK_FILE.USER_ID IS '关联用户ID';
COMMENT ON COLUMN DISK_FILE.FOLDER_PATH IS '文件夹路径';


