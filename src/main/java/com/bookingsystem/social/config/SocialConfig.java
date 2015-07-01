package com.bookingsystem.social.config;


import com.bookingsystem.social.StaticUserIdSource;

import org.springframework.context.annotation.*;
import org.springframework.core.env.Environment;
import org.springframework.social.config.annotation.ConnectionFactoryConfigurer;
import org.springframework.social.config.annotation.EnableSocial;
import org.springframework.social.config.annotation.SocialConfigurerAdapter;
import org.springframework.social.connect.Connection;
import org.springframework.social.connect.ConnectionFactoryLocator;
import org.springframework.social.connect.ConnectionRepository;
import org.springframework.social.connect.web.ConnectController;
import org.springframework.social.facebook.api.Facebook;
import org.springframework.social.facebook.connect.FacebookConnectionFactory;
import org.springframework.social.twitter.api.Twitter;
import org.springframework.social.twitter.connect.TwitterConnectionFactory;


@Configuration
@EnableSocial
@PropertySource("classpath:application.properties")
public class SocialConfig extends SocialConfigurerAdapter{

    @Override
    public StaticUserIdSource getUserIdSource() {
        return new StaticUserIdSource();
    }


    @Bean
    public ConnectController connectController(
            ConnectionFactoryLocator connectionFactoryLocator,
            ConnectionRepository connectionRepository) {
        return new ConnectController(connectionFactoryLocator, connectionRepository);
    }


    @Configuration
    public static class TwitterConfigurer extends SocialConfigurerAdapter{

        @Override
        public void addConnectionFactories(ConnectionFactoryConfigurer connectionFactoryConfigurer, Environment env) {
            connectionFactoryConfigurer.addConnectionFactory(
                    new TwitterConnectionFactory(
                            env.getRequiredProperty("twitter.consumer.key"),
                            env.getRequiredProperty("twitter.consumer.secret")));
        }

        @Bean
        @Scope(value = "request", proxyMode = ScopedProxyMode.INTERFACES)
        public Twitter twitterTemplate(ConnectionRepository connectionRepository) {
            Connection<Twitter> connection = connectionRepository.findPrimaryConnection(Twitter.class);
            return connection != null ? connection.getApi() : null;
        }

    }

    @Configuration
    public static class FacebookConfigurer extends SocialConfigurerAdapter {
        @Override
        public void addConnectionFactories(
                ConnectionFactoryConfigurer connectionFactoryConfigurer,
                Environment env) {
            connectionFactoryConfigurer.addConnectionFactory(
                    new FacebookConnectionFactory(
                            env.getRequiredProperty("facebook.app.id"),
                            env.getRequiredProperty("facebook.app.secret")));
        }

        @Bean
        @Scope(value = "request", proxyMode = ScopedProxyMode.INTERFACES)
        public Facebook facebookTemplate(ConnectionRepository connectionRepository) {
            Connection<Facebook> connection = connectionRepository.findPrimaryConnection(Facebook.class);
            return connection != null ? connection.getApi() : null;
        }

    }
}
