package com.example.evenodd;

import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin(origins="*")
public class EvenOddController {

    @GetMapping("/evenodd/{num}")
    public String checkEvenOdd(@PathVariable int num){
        if(num % 2 == 0)
            return num + " is Even";
        else
            return num + " is Odd";
    }
}
