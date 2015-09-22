package upload;

import java.io.*;
import java.util.*;

public class UploadInfo {
 
 private String userName;
 private String desc;
 private HashMap<String, File> fileMap = new HashMap<String, File>();
 
 public String getUserName() {
  return userName;
 }
 public String getDesc() {
  return desc;
 }
 public void setUserName(String userName) {
  this.userName = userName;
 }
 public void setDesc(String desc) {
  this.desc = desc;
 }
 public HashMap<String, File> getFileMap() {
  return fileMap;
 }
 public void setFileMap(HashMap<String, File> fileMap) {
  this.fileMap = fileMap;
 }

}