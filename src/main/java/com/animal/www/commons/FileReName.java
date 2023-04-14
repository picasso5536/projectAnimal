package com.animal.www.commons;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class FileReName {
	public String exec(String path, String file_name) {
		File dir = new File(path);
		String[] arr = dir.list();
		List<String> k = Arrays.asList(arr);
		boolean res = k.contains(file_name);
		if(res) {
			String pre_name = file_name.substring(0, file_name.length()-4);
			String after_name = file_name.substring(pre_name.length());
			file_name = pre_name+"1"+after_name;
		}
		return file_name;
	}
	
	public String[] exec2(String path, String[] fileNames) {
		
		File dir = new File(path);
		String[] arr = dir.list();
		List<String> k = Arrays.asList(arr);
		List<String> result = new ArrayList<>();
		
		for (String fileName : fileNames) {
			boolean res = k.contains(fileName);
			if (res) {
				String preName = fileName.substring(0, fileName.length() - 4);
				String afterName = fileName.substring(preName.length());
				String renamedFileName = preName + "1" + afterName;
				result.add(renamedFileName);
			} else {
				result.add(fileName);
			}
		}
		
		return result.toArray(new String[result.size()]);
	}
}
