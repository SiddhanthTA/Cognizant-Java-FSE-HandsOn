package com.cognizant.jwtauthentication.controller;

import com.cognizant.jwtauthentication.model.JwtResponse;
import com.cognizant.jwtauthentication.util.JwtUtil;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.nio.charset.StandardCharsets;
import java.util.Base64;

@RestController
public class AuthenticationController {

    @GetMapping("/authenticate")
    public JwtResponse authenticate(HttpServletRequest request) {

        String authorization = request.getHeader("Authorization");

        String encodedCredentials = authorization.substring(6);

        byte[] decodedBytes =
                Base64.getDecoder().decode(encodedCredentials);

        String credentials =
                new String(decodedBytes, StandardCharsets.UTF_8);

        String username = credentials.split(":")[0];

        String token = JwtUtil.generateToken(username);

        return new JwtResponse(token);

    }
}