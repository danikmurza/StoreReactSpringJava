package org.springframework.boot.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.demo.model.Users;
import org.springframework.boot.demo.repository.StorageService;
import org.springframework.boot.demo.service.ReturnObject;
import org.springframework.boot.demo.service.UserService;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@CrossOrigin
@RestController
public class FileController {

    private final StorageService storageService;
    private final UserService userService;
    private final ReturnObject obj;


    @Autowired
    public FileController(StorageService storageService, UserService userService, ReturnObject obj) {
        this.storageService = storageService;
        this.userService = userService;
        this.obj = obj;
    }

    @GetMapping("/aa")
    public Object listAllFiles(Model model) {

        model.addAttribute("files", storageService.loadAll().map(
                path -> ServletUriComponentsBuilder.fromCurrentContextPath()
                        .path("/download/")
                        .path(path.getFileName().toString())
                        .toUriString())
                .collect(Collectors.toList()));

        return obj.message("listFiles", 200);
    }

    @GetMapping("/download/{filename:.+}") @ResponseBody
    public ResponseEntity<Resource> downloadFile(@PathVariable String filename) {

        Resource resource = (Resource) storageService.loadAsResource(filename);

        return ResponseEntity.ok()
                .header(HttpHeaders.CONTENT_DISPOSITION,
                        "attachment; filename=\"" + resource.getFilename() + "\"")
                .body(resource);
    }

    @PostMapping("/upload-file") public @ResponseBody
    Object uploadFile(@RequestParam("file") MultipartFile file,  @RequestParam("_id") int _id) {
        try {

            String name = storageService.store(file);
            Users id = userService.findById(_id);

            String uri = ServletUriComponentsBuilder.fromCurrentContextPath()
                    .path("/download/").path(name).toUriString();

            id.setUrlAvatar(uri);
            userService.save(id);

            return obj.message(id.toString(), 201);

        }catch (Exception e){
            return e;
        }
    }


    @PostMapping("/upload-multiple-files") @ResponseBody
    public List<Object> uploadMultipleFiles(@RequestParam("files") MultipartFile[] files) {
        return Arrays.stream(files)
                .map(storageService::store)
                .collect(Collectors.toList());
    }
}
