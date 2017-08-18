package com.proso.bs;

/**
 * 执行失败转移操作,运行在请求节点处理服务失败节点转移.
 * 其中故障切换节点可接受都操作，写操作，备份操作节点失败转移.
 */
public interface SqlTransfer {
    public String getNewNode(String sqlType);
}
