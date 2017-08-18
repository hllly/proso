package com.proso.bs;

import java.util.ArrayList;

/**
 * 执行读操作，运行在mysql读节点上作为远程服务接受远程调用.
 */
public interface SqlReader {
    public ArrayList<Data> read(String sql) throws Exception;
}
