package com.GuideCity.auth.service;

import com.GuideCity.auth.model.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
}
