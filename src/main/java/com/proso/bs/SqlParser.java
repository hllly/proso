package com.proso.bs;

/**
 * Sql解析器，用于判断操作类型，包括读,写,备份. 运行在请求接收节点.
 */
public interface SqlParser {
    public String parse(String sql);
}
