package org.munilvc.myspringapp.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan(basePackages = { "org.munilvc.myspringapp" })
public class RootApplicationContextConfig {

}
