package gapp.web.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@SuppressWarnings("unused")
@Controller
public class FileController {

	@Autowired
	private ServletContext context;

	private File getFileDirectory() {
		String path = context.getRealPath("/WEB-INF/files");
		return new File(path);

	}

	@RequestMapping(value = "/upload.html", method = RequestMethod.POST)
	public String upload(@RequestParam MultipartFile file) throws IllegalStateException, IOException {
		System.out.print("sad");
		// file.toString()
		file.transferTo(new File(getFileDirectory(), file.getOriginalFilename()));
		return "AcademicRecord";

	}

	@RequestMapping(value = "/upload2.html", method = RequestMethod.POST)
	public String uploa(@RequestParam MultipartFile file) throws IllegalStateException, IOException {
		System.out.print("saad");
		// file.toString()
		file.transferTo(new File(getFileDirectory(), file.getOriginalFilename()));
		return null;

	}

	@RequestMapping(value = "/download.html")
	public String download(HttpServletResponse response) throws IOException {
		FileInputStream in = new FileInputStream(new File(getFileDirectory(), "Ishan Shah cover letter.docx"));
		OutputStream out = response.getOutputStream();

		byte buffer[] = new byte[2048];
		int bytesRead;
		while ((bytesRead = in.read(buffer)) > 0)
			out.write(buffer, 0, bytesRead);

		in.close();
		return null;

	}

}
