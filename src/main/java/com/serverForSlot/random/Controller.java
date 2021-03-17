package com.serverForSlot.random;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {

    @GetMapping("/")
    public ResponseEntity hello(){
        return ResponseEntity.ok("апдейт");
    }

    @GetMapping("/2")
    public ResponseEntity hello2(){
        return ResponseEntity.ok("Пошел нахуй!");
    }
}
