package com.proso.bs;

import java.io.*;

/**
 * Created by Administrator on 2016/5/3.
 */
public class SqlBackuperImpl implements SqlBackuper{
    private String mysqlBinPath;
    private String username;
    private String password;

    //cmd：ip+username+password+savePath+fileName+databaseName
    public  boolean backup(String cmd,String savePath){
        File saveFile = new File(savePath);
        if (!saveFile.exists()) { saveFile.mkdirs(); }
        if (!savePath.endsWith(File.separator)) { savePath = savePath + File.separator; }
        try {
            Process process = Runtime.getRuntime().exec(cmd);
            if (process.waitFor() == 0) {
                return true;
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        return false;
    }

    public void backup1(OutputStream output, String dbname) {
        String command = "cmd /c " + mysqlBinPath + "mysqldump -u" + username
                + " -p" + password + " --set-charset=utf8 " + dbname;
        PrintWriter p = null;
        BufferedReader reader = null;
        try {
            p = new PrintWriter(new OutputStreamWriter(output, "utf8"));
            Process process = Runtime.getRuntime().exec(command);
            InputStreamReader inputStreamReader = new InputStreamReader(process
                    .getInputStream(), "utf8");
            reader = new BufferedReader(inputStreamReader);
            String line = null;
            while ((line = reader.readLine()) != null) {
                p.println(line);
            }
            p.flush();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (reader != null) {
                    reader.close();
                }
                if (p != null) {
                    p.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
