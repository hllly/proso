package com.proso.bs;

import java.util.ArrayList;

/**
 * 执行写操作，在mysql服务器写节点上作为远程服务接受调用.
 */
public interface SqlWriter {
    public int write(ArrayList<Data> data);
}
