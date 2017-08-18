package com.proso.bs;

/**
 * 执行备份操作，作为服务运行在mysql备份节点上接受远程服务调用.
 */
public interface SqlBackuper {
    public boolean backup(String cmd, String savePath);
}
