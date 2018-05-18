package com.javasoft.libs.utils;

public class FileExtension {
	public static String getExtension(String filename) {
		String extension = null;
		if(filename.endsWith(".ppt") || filename.endsWith(".pptx")) {
			extension = "ppt";
		}else if(filename.endsWith(".xls") || filename.endsWith(".xlsx")) {
			extension = "xls";
		}else if(filename.endsWith(".doc") || filename.endsWith(".docx")) {
			extension = "doc";
		}else if(filename.endsWith(".pdf")) {
			extension = "pdf";
		}else if(filename.endsWith(".txt")) {
			extension = "txt";
		}else if(filename.endsWith(".zip") || filename.endsWith(".jar")) {
			extension = "zip";
		}else if(filename.endsWith(".jpg") || filename.endsWith(".gif") || filename.endsWith(".png")) {
			extension = "image";
		}else if(filename.endsWith(".exe") || filename.endsWith(".msi")) {
			extension = "exe";
		}else if(filename.endsWith(".hwp")) {
			extension = "hwp";
		}else {
			extension = "file";
		}
		return extension;
	}
}
