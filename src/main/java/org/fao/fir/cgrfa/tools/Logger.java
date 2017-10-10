package org.fao.fir.cgrfa.tools;

import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;

public class Logger {

	private String logFile;
	
	public Logger(String logFile) {
		this.logFile = logFile;
	}
	
	public void log(String log) throws IOException {
		Path pathOfLog = Paths.get(this.logFile);
        Charset charSetOfLog = Charset.forName("US-ASCII");
        java.io.BufferedWriter bwOfLog = Files.newBufferedWriter(pathOfLog, charSetOfLog,StandardOpenOption.CREATE, StandardOpenOption.APPEND);
        bwOfLog.append(log, 0, log.length());
        bwOfLog.newLine();
        bwOfLog.close();
	}
	
	
}
